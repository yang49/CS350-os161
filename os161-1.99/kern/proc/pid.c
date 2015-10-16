#include "opt-A2.h"
#include <pid.h>
#include <types.h>
#include <limits.h>

#if OPT_A2

void pid_init(void* arr) {
	bool* t = (bool *) arr;
	for(int i = 0; i < PID_MAX; i++) {
		t[i] = true;
	}
	t[0] = false;
}

int pid_new(void* arr, int* curpid) {
	bool *t = (bool *) arr;
	while(!t[*curpid]) {
		*curpid = *curpid + 1;
		if(*curpid == PID_MAX - 1) *curpid = 0;
	}
	t[*curpid] = false;
	return *curpid;
}

void pid_reclaim(void* arr, int pid) {
	bool* t = (bool* ) arr;
	t[pid] = true;
}

#endif //  OPT_A2
