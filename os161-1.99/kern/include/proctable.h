#ifndef _PROC_TABLE_H_
#define _PROC_TABLE_H_


#include <proc.h>
#include <synch.h>
#include <types.h>
#include <spinlock.h>
#include <limits.h>

#include "opt-A2.h"

#if OPT_A2


struct node {
	struct proc* myproc;
   pid_t pid;
	pid_t parent;
	int exitcode;
   struct semaphore *mysem;
};

//This funtion is used to update information about a proc
void proctable_update(struct node* proctable,struct proc* myproc, int exitcode);

//This function is used to insert a new node in the table
void proctable_insert(struct node* prctable ,struct proc* myproc);

//This function is to check the status of a process
struct semaphore* proctable_get(struct node* proctable, pid_t pid);

//This function is to return a proc ptr
struct proc* proc_find(struct node* proctable, pid_t pid, int* exitcode);

void proctable_delete1(struct node* proctable, pid_t pid, int* exitcode);

bool has_exit(struct node* proctable, pid_t pid);

int getexitcode(struct node* proctable, pid_t pid);

#endif

#endif
