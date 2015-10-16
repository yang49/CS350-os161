#include <proctable.h>
#include <proc.h>
#include <kern/errno.h>
#include "opt-A2.h"

#if OPT_A2

int proc_counter = 0;

void proctable_update(struct node* proctable, struct proc* myproc, int exitcode) {
//	spinlock_acquire(&mylock);
	for(int i = 0; i < LEN; i++) {
		if(proctable[i].pid == myproc->pid) {
			proctable[i].pid = myproc->pid;
			proctable[i].exitcode = exitcode;
         V(proctable[i].mysem);
			break;
		}
	}
//	spinlock_release(&mylock);
	return;
}

void proctable_insert(struct node* proctable, struct proc* myproc) {
/*   for(int i = 0; i < LEN; i++) {
		if(proctable[i].myproc == NULL) {
			proctable[i].myproc = myproc;
			proctable[i].pid = myproc->pid;
			proctable[i].mysem = sem_create("mysem", 0);
			return ;
		}
	}
	return;  */
	if(proc_counter == LEN - 1) proc_counter = 0;
	if(proctable[proc_counter].myproc == NULL) {
		proctable[proc_counter].myproc = myproc;
		proctable[proc_counter].pid = myproc->pid;
		proctable[proc_counter].mysem = sem_create("mysem", 0);
	}
	else {
		proctable[proc_counter].myproc = myproc;
		proctable[proc_counter].pid = myproc->pid;
		sem_destroy(proctable[proc_counter].mysem);
		proctable[proc_counter].mysem = sem_create("mysem", 0);
	}
	proc_counter++;
	return;
}

struct semaphore* proctable_get(struct node* proctable, pid_t pid) {
	for(int i = 0; i < LEN; i++) {
		if(proctable[i].pid == pid) {
			return proctable[i].mysem;
		}
	}
   return NULL;
}

void proctable_delete1(struct node* proctable,pid_t pid, int* exitcode) {
	for(int i = 0; i < LEN; i++) {
		if(proctable[i].myproc->pid == pid) {
			proctable[i].myproc = NULL;
			*exitcode = proctable[i].exitcode;
		}
	}
}

int getexitcode(struct node* proctable, pid_t pid) {
	for(int i = 0; i < LEN; i++) {
		if(proctable[i].pid == pid) {
			return proctable[i].exitcode;
		}
	}
	kprintf("shouldnt get here getexitcode  \n");
	return 0;
}
#endif  //  OPT_A2
