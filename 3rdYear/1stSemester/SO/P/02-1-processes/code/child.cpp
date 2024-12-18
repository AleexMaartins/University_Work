#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void)
{
    printf("I'm the child: PID = %d, PPID = %d\n", getpid(), getppid());
    printf("1\n");
    printf("2\n");
    printf("3\n");
    printf("4\n");
    printf("5\n");
    printf("6\n");
    printf("7\n");
    printf("8\n");
    printf("9\n");
    printf("10\n");
    usleep(10000);
    // printf("I'm the child: PID = %d, PPID = %d\n", getpid(), getppid());

   return EXIT_SUCCESS;
}
