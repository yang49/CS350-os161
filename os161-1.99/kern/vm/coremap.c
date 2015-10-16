#include <coremap.h>
#include <vm.h>
#include <addrspace.h>
#include <synch.h>
#include <lib.h>

#include "opt-A3.h"
#if OPT_A3
void myfunc(int i,unsigned long npages, struct coremap_entry* ar) {
	for(int j = i - npages + 1; j <= i; j++) {
		ar[j].status = 1;
		//kprintf("&&&&&\n");
	}
}
#endif
