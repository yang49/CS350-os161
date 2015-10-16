#include <types.h>
#include <lib.h>
#include <synchprobs.h>
#include <synch.h>

/* 
 * This simple default synchronization mechanism allows only creature at a time to
 * eat.   The globalCatMouseSem is used as a a lock.   We use a semaphore
 * rather than a lock so that this code will work even before locks are implemented.
 */

/* 
 * Replace this default synchronization mechanism with your own (better) mechanism
 * needed for your solution.   Your mechanism may use any of the available synchronzation
 * primitives, e.g., semaphores, locks, condition variables.   You are also free to 
 * declare other global variables if your solution requires them.
 */

/*
 * replace this with declarations of any synchronization and other variables you need here
 */
//static struct semaphore *globalCatMouseSem;
static bool *ava_bowl = NULL;
static volatile int num_cat_eating;
static volatile int num_mouse_eating;
static struct lock *myLock;
//static struct cv *wchan_cat;
//static struct cv *wchan_mouse;
static struct cv *wchan_all;

/* 
 * The CatMouse simulation will call this function once before any cat or
 * mouse tries to each.
 *
 * You can use it to initialize synchronization and other variables.
 * 
 * parameters: the number of bowls
 */
void
catmouse_sync_init(int bowls)
{
  /* replace this default implementation with your own implementation of catmouse_sync_init */
  /* This is the default implementation
  (void)bowls; // keep the compiler from complaining about unused parameters
  globalCatMouseSem = sem_create("globalCatMouseSem",1);
  if (globalCatMouseSem == NULL) {
    panic("could not create global CatMouse synchronization semaphore");
  }
  return;
  */
  myLock = lock_create("myLock");
  KASSERT(myLock != NULL);
  lock_acquire(myLock);
  ava_bowl = kmalloc(bowls * sizeof(bool));
  KASSERT(ava_bowl != NULL);
  for(int i = 0; i < bowls; i++) {
     ava_bowl[i] = true;
  }
  num_cat_eating = 0;
  num_mouse_eating = 0;
//  wchan_cat = cv_create("cat");
//  wchan_mouse = cv_create("mouse");
  wchan_all = cv_create("all");
  lock_release(myLock);
  return;
}

/* 
 * The CatMouse simulation will call this function once after all cat
 * and mouse simulations are finished.
 *
 * You can use it to clean up any synchronization and other variables.
 *
 * parameters: the number of bowls
 */
void
catmouse_sync_cleanup(int bowls)
{
  /* replace this default implementation with your own implementation of catmouse_sync_cleanup */
  /* (void)bowls; // keep the compiler from complaining about unused parameters
  KASSERT(globalCatMouseSem != NULL);
  sem_destroy(globalCatMouseSem); */

  lock_destroy(myLock);
  (void)bowls;
  kfree(ava_bowl);
//  cv_destroy(wchan_cat);
//  cv_destroy(wchan_mouse);
  cv_destroy(wchan_all);
}


/*
 * The CatMouse simulation will call this function each time a cat wants
 * to eat, before it eats.
 * This function should cause the calling thread (a cat simulation thread)
 * to block until it is OK for a cat to eat at the specified bowl.
 *
 * parameter: the number of the bowl at which the cat is trying to eat
 *             legal bowl numbers are 1..NumBowls
 *
 * return value: none
 */

void
cat_before_eating(unsigned int bowl) 
{
  /* replace this default implementation with your own implementation of cat_before_eating 
  (void)bowl;  // keep the compiler from complaining about an unused parameter
  KASSERT(globalCatMouseSem != NULL);
  P(globalCatMouseSem);
  */
  lock_acquire(myLock);
  while((num_mouse_eating > 0) || (ava_bowl[bowl - 1] == false)) {
    // cv_wait(wchan_cat, myLock);
     cv_wait(wchan_all, myLock);
  }
  //lock_release(myLock);

  //lock_acquire(myLock);
  num_cat_eating++;
  //lock_release(myLock);

  //lock_acquire(myLock);
  ava_bowl[bowl - 1] = false;
  lock_release(myLock);
}

/*
 * The CatMouse simulation will call this function each time a cat finishes
 * eating.
 *
 * You can use this function to wake up other creatures that may have been
 * waiting to eat until this cat finished.
 *
 * parameter: the number of the bowl at which the cat is finishing eating.
 *             legal bowl numbers are 1..NumBowls
 *
 * return value: none
 */

void
cat_after_eating(unsigned int bowl) 
{
  /* replace this default implementation with your own implementation of cat_after_eating
  (void)bowl;  // keep the compiler from complaining about an unused parameter
  KASSERT(globalCatMouseSem != NULL);
  V(globalCatMouseSem);
  */
  lock_acquire(myLock);
  num_cat_eating--;
  //lock_release(myLock);

  //lock_acquire(myLock);
  ava_bowl[bowl - 1] = true;
  //lock_acquire(myLock);

  //lock_acquire(myLock);
  /*
  if(num_cat_eating == 0) {
    cv_broadcast(wchan_mouse,myLock);
  }
  else {
  	cv_broadcast(wchan_cat, myLock);
  }
  */
  cv_broadcast(wchan_all, myLock);
  lock_release(myLock);
}

/*
 * The CatMouse simulation will call this function each time a mouse wants
 * to eat, before it eats.
 * This function should cause the calling thread (a mouse simulation thread)
 * to block until it is OK for a mouse to eat at the specified bowl.
 *
 * parameter: the number of the bowl at which the mouse is trying to eat
 *             legal bowl numbers are 1..NumBowls
 *
 * return value: none
 */

void
mouse_before_eating(unsigned int bowl) 
{
  /* replace this default implementation with your own implementation of mouse_before_eating
  (void)bowl;  // keep the compiler from complaining about an unused parameter
  KASSERT(globalCatMouseSem != NULL);
  P(globalCatMouseSem);
  */
  lock_acquire(myLock);
  while((num_cat_eating > 0) || (ava_bowl[bowl - 1] == false)) {
     //cv_wait(wchan_mouse, myLock);
     cv_wait(wchan_all, myLock);
  }
  //lock_release(myLock);

  //lock_acquire(myLock);
  num_mouse_eating++;
  //lock_release(myLock);

  //lock_acquire(myLock);
  ava_bowl[bowl - 1] = false;
  lock_release(myLock);
}

/*
 * The CatMouse simulation will call this function each time a mouse finishes
 * eating.
 *
 * You can use this function to wake up other creatures that may have been
 * waiting to eat until this mouse finished.
 *
 * parameter: the number of the bowl at which the mouse is finishing eating.
 *             legal bowl numbers are 1..NumBowls
 *
 * return value: none
 */

void
mouse_after_eating(unsigned int bowl) 
{
  /* replace this default implementation with your own implementation of mouse_after_eating
  (void)bowl;  // keep the compiler from complaining about an unused parameter
  KASSERT(globalCatMouseSem != NULL);
  V(globalCatMouseSem);
  */
  lock_acquire(myLock);
  num_mouse_eating--;
  //lock_release(myLock);

  //lock_acquire(myLock);
  ava_bowl[bowl - 1] = true;
  //lock_release(myLock);

  //lock_acquire(myLock);
  /*
  if(num_cat_eating == 0) {
     cv_broadcast(wchan_cat, myLock);
  }
  else {
     cv_broadcast(wchan_cat, myLock);
  }
  */
  cv_broadcast(wchan_all, myLock);
  lock_release(myLock);
}
