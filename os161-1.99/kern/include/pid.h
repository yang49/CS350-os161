#include "opt-A2.h"
#include <types.h>

#if OPT_A2

#ifndef _PID_H_
#define _PID_H_

void pid_init(void* arr);

int pid_new(void* arr, int* curpid);

void pid_reclaim(void* arr, int pid);

#endif  // PID_H

#endif //OPT_A2
