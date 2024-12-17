#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void)
{
  printf("Before the fork:");
  printf(" PID = %d, PPID = %d\n", getpid(), getppid());

  pfork(); // equivalent to fork(), dealing internally with error situations
  
  printf("After the fork:");
  printf("  PID = %d, PPID = %d\n",getpid(), getppid());
  bwRandomDelay(0, 2000);
  printf("  Was I printed by the parent or by the child process? How can I know it?\n"); 
  
  return EXIT_SUCCESS;
}

