#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "delays.h"
#include "process.h"

int main(void)
{
  printf("Before the fork: PID = %d, PPID = %d\n", getpid(), getppid());

  pid_t ret = pfork();
  if (ret == 0)
  {
    execl("./child", "./child", NULL); // int execl(const char *pathname, const char *arg, .../* (char  *) NULL */);
    printf("why doesn't this message show up?\n"); //it called child and it returned EXIT_SUCCESS;
    return EXIT_FAILURE;
  }
  else
  {
    usleep(10000);
    printf("I'm the parent: PID = %d, PPID = %d\n", getpid(), getppid());
    printf("11\n");
    printf("12\n");
    printf("13\n");
    printf("14\n");
    printf("15\n");
    printf("16\n");
    printf("17\n");
    printf("18\n");
    printf("19\n");
    printf("20\n");
    pwait(NULL);
  }

  return EXIT_SUCCESS;
}
