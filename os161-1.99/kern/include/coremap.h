#include "opt-A3.h"

#include <types.h>

#ifndef __COREMAP_H__
#define __COREMAP_H__

struct lock;

struct coremap_entry {
	int status; //0 means good, 1 means used, 2 means really bad
	int length;
	//struct lock* core_lock
	//vaddr_t vaddr;
	paddr_t paddr;
};

volatile int init;

struct coremap_entry* map;
struct lock* c_map_lock;
volatile int length;
/////////////////////////////////////
//functions
//void coremap_init(paddr_t firstpaddr, paddr_t lastpaddr);
//void coremap_init(void);
//void coremap_free(vaddr_t vaddr);

void myfunc(int i, unsigned long j, struct coremap_entry* ar);

#endif  //end coremap.h
