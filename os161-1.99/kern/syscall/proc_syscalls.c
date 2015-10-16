#include <proctable.h>
#include <types.h>
#include <kern/errno.h>
#include <kern/unistd.h>
#include <kern/wait.h>
#include <lib.h>
#include <syscall.h>
#include <current.h>
#include <proc.h>
#include <thread.h>
#include <addrspace.h>
#include <copyinout.h>
#include <mips/trapframe.h>

#include <pid.h>
#include <vm.h>
#include <vfs.h>
#include <kern/fcntl.h>
#include <test.h>
#include <copyinout.h>

#include "opt-A2.h"

  /* this implementation of sys__exit does not do anything with the exit code */
  /* this needs to be fixed to get exit() and waitpid() working properly */

void sys__exit(int exitcode) {
  struct addrspace *as;
  struct proc *p = curproc;
  /* for now, just include this to keep the compiler from complaining about
     an unused variable */

  //(void) exitcode;

#if OPT_A2
  proctable_update(proctable, curproc,_MKWAIT_EXIT (exitcode));
#endif
  DEBUG(DB_SYSCALL,"Syscall: _exit(%d)\n",exitcode);

  KASSERT(curproc->p_addrspace != NULL);
  as_deactivate();
  /*
   * clear p_addrspace before calling as_destroy. Otherwise if
   * as_destroy sleeps (which is quite possible) when we
   :* come back we'll be calling as_activate on a
   * half-destroyed address space. This tends to be
   * messily fatal.
   */
  as = curproc_setas(NULL);
  as_destroy(as);
  
  /* detach this thread from its process */
  /* note: curproc cannot be used after this call */
  proc_remthread(curthread);

  /* if this is the last user process in the system, proc_destroy()
     will wake up the kernel menu thread */
  proc_destroy(p);
  
  thread_exit();
  /* thread_exit() does not return, so we should never get here */
  panic("return from thread_exit in sys_exit\n");
}


/* stub handler for getpid() system call                */
int
sys_getpid(pid_t *retval)
{
  /* for now, this is just a stub that always returns a PID of 1 */
  /* you need to fix this to make it work properly */
#if OPT_A2
 // lock_acquire(curproc->proc_lock);
  KASSERT(curproc != NULL);
  *retval = curproc->pid;
 // lock_release(curproc->proc_lock);
#endif  // OPT_A2
  return(0);
}

/* stub handler for waitpid() system call                */

int
sys_waitpid(pid_t pid,
	    userptr_t status,
	    int options,
	    pid_t *retval)
{
  int exitstatus;
  int result;
  if (options != 0) {
    return(EINVAL);
  }
#if OPT_A2
  	if((int) status % 4 != 0)  {
  		return EFAULT;
  	}
	struct semaphore* target = proctable_get(proctable, pid);
	if(target == NULL) {
		return ECHILD;
	}
	P(target);
   exitstatus = getexitcode(proctable, pid);
   result = copyout((void* )&exitstatus,status,sizeof(int));
   if(result) {
		return result;
	}
	*retval = pid;
	return 0;
   
#else
  exitstatus = 0;
  result = copyout((void* )&exitstatus,status,sizeof(int));
  if (result) {
    return(result);
  }
  *retval = pid;
  return(0);
#endif
}

#if OPT_A2
int sys_fork(struct trapframe* tf, pid_t* retval) {
	int errcheck;    //this is to check if there's error in some funcitons
	//first creating a new proc
	struct proc* child = proc_create_runprogram("child123");
   //proctable_insert(child);
	if(child == NULL) {
		return ENOMEM;
	}
	curproc->child_pid = child->pid;
	curproc->child = child;      ///////////////
	child->parent = curproc;     //////////////
	
	//now, copying the address space
	struct addrspace* newas;
	errcheck = as_copy(curproc_getas(), &newas);
	if(errcheck != 0) {    //there's an error
		return errcheck;
	}
	child->p_addrspace = newas;
	
	//now copying the trapframe to the child
	struct trapframe* newtf = kmalloc(sizeof(struct trapframe));
	if(newtf == NULL) {
		return ENOMEM;
	}
	*newtf = *tf;
	//now, do the thread_fork
	errcheck = thread_fork("child2", child, enter_forked_process, newtf, 0);
	if(errcheck != 0) {
		return errcheck;
	}
	*retval = child->pid;
	return(0);
}
#endif //OPT_A2

//The following is the implementation of sys_execv

#if OPT_A2
int sys_execv(char* program, char** args) {
	int result;

	char name[strlen(program) + 1];
	result = copyin((userptr_t) program,
				name, (strlen(program) + 1) * sizeof(char));
	//kprintf("%s", name);

	int len_arg = 0;
	while(args[len_arg] != NULL) {
		len_arg++;
	}

	int length_every_arg[len_arg];
	for(int i = 0; i < len_arg; i++) {
		length_every_arg[i] = strlen(args[i]);
	}

	char* kern_args[len_arg];
	for(int i = 0; i < len_arg; i++) {
		kern_args[i] = kmalloc(sizeof(char) * length_every_arg[i] + 1);
		copyin((const_userptr_t)args[i], kern_args[i],
              (length_every_arg[i] + 1) * sizeof(char));
	}
/*
	for(int i = 0; i < len_arg; i++) {
		kprintf("{ _%d__%p__%p_",strlen(kern_args[i]), kern_args[i],args[i]);
		kprintf("%s", kern_args[i]);
		kprintf("}\n");
	}
*/
/////////////////////////////////////////////////////
// this is "copied" from runprogram
  	struct addrspace* old_as;
	struct vnode* v;
	vaddr_t entrypoint, stackptr;

	result = vfs_open(program, O_RDONLY, 0, &v);
	if(result) {
		return result;
	}

	as_deactivate();
	old_as = curproc_setas(NULL);
	as_destroy(old_as);

	struct addrspace* new_as = as_create();
	if(new_as == NULL) {
		vfs_close(v);
		return ENOMEM;
	}
	curproc_setas(new_as);
	as_activate();

	result = load_elf(v, &entrypoint);
	if(result) {
		vfs_close(v);
		return result;
	}

	vfs_close(v);
	
	result = as_define_stack(new_as, &stackptr);
	if(result) {
		return result;
	}
//////////////////////////////////////////////////////////
// kern_args
// the addr of stackptr is 0x8000 0000
	vaddr_t argv = stackptr;
	for(int i = 0; i < len_arg + 1; i++) {
		argv = argv - 4;
	}
   
	vaddr_t start = argv;
	vaddr_t temp = argv;

	copyout(NULL, (userptr_t)(stackptr - 4), 4);
	//starts from 1, because argv[0] is reserved for the program name
	for(int i = 0; i < len_arg; i++) {
		//question? why do I have to add 2
		int m = sizeof(char) * (strlen(kern_args[i]) + 1);
	//	kprintf("the value of m -> %d\n", m);
		argv = argv - m;
		copyout(kern_args[i], (userptr_t)argv, m);
	//	kprintf("***(%d)%s(%p)\n***", m, (char* )argv, (void *) argv);
		copyout(&argv, (userptr_t)temp, sizeof(char* ));
		temp = temp + 4;
	}
	
	for(int i = 0; i < len_arg; i++) {
		kfree(kern_args[i]);
	}
	
	while(argv % 8 != 0) {argv--;}
	 
	enter_new_process(len_arg, (userptr_t)start, (vaddr_t) argv, entrypoint);

//	enter_new_process(0, NULL, stackptr, entrypoint);
	panic("enter_new_process returned");
	return EINVAL;
}
        
#endif
