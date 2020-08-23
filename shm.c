#include "param.h"
#include "types.h"
#include "defs.h"
#include "x86.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "spinlock.h"

struct {
  struct spinlock lock;
  struct shm_page {
    uint id;
    char *frame;
    int refcnt;
  } shm_pages[64];
} shm_table;

void shminit() {
  int i;
  initlock(&(shm_table.lock), "SHM lock");
  acquire(&(shm_table.lock));
  for (i = 0; i< 64; i++) {
    shm_table.shm_pages[i].id =0;
    shm_table.shm_pages[i].frame =0;
    shm_table.shm_pages[i].refcnt =0;
  }
  release(&(shm_table.lock));
}

int shm_open(int id, char **pointer) {
  int i = 0;
  int found = 0;

  // case 1
  acquire(&(shm_table.lock));
  for (i = 0; i < 64; i++) {
    if (shm_table.shm_pages[i].id == id) {
      mappages(myproc()->pgdir, (void *)PGROUNDUP(myproc()->sz), PGSIZE, V2P(shm_table.shm_pages[i].frame), PTE_W|PTE_U);
      shm_table.shm_pages[i].refcnt++;
      *pointer = (char *)PGROUNDUP(myproc()->sz);
      myproc()->sz = PGROUNDUP(myproc()->sz) + PGSIZE;
      release(&(shm_table.lock));
      return 0;
    }
  }

  // case 2
  for (i = 0; i < 64; i++) {
    if (shm_table.shm_pages[i].id == 0) {
      shm_table.shm_pages[i].id = id;
      shm_table.shm_pages[i].frame = kalloc();
      shm_table.shm_pages[i].refcnt = 1;

      mappages(myproc()->pgdir, (void *)PGROUNDUP(myproc()->sz), PGSIZE, V2P(shm_table.shm_pages[i].frame), PTE_W|PTE_U);
      *pointer = (char *)PGROUNDUP(myproc()->sz);
      myproc()->sz = PGROUNDUP(myproc()->sz) + PGSIZE;
      release(&(shm_table.lock));
      return 0;
    }
  }

  release(&(shm_table.lock));
  return 0; //added to remove compiler warning - you should decide what to return
}


int shm_close(int id) {
//Lab 4

initlock(&(shm_table.lock), "SHM lock");
acquire(&(shm_table.lock));

//check if user input a zero or negative by mistake
if (id <= 0) {
	return 0;
}

//iterate through pages for id, if a match is found and is greater than 0,
//decrement the ref count. if the refcount is now or was already zero, 
//turn the accompanying frame and id of the page to 0 to clear it.
for (int i = 0; i < 64, i++) {
	if (shm_table.shm_pages[i].id == id) {	
		if (shm_table.shm_pages[i].refcnt > 0)
			shm_table.shm_pages[i].refcnt--;

		if (shm_table.shm_pages[i].refcnt == 0) {
			shm_table.shm_pages[i].id == 0;
			shm_table.shm_pages[i].frame == 0;
						
		}

	}

}

release(&(shm_table.lock));
return 0;

}
