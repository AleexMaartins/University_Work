#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

int shared_variable;

void *child_thread(void *arg) {
    int *N2_ptr = (int *)arg;
    while (shared_variable < *N2_ptr) {
        printf("Child thread: %d\n", shared_variable);
        shared_variable++;
    }
    return NULL;
}

int main() {
    int N1, N2;

    // (a) Ask the user for N1 between 1 and 9 and validate the input.
    do {
        printf("Enter an integer between 1 and 9 (N1): ");
        scanf("%d", &N1);
    } while (N1 < 1 || N1 > 9);

    // Create a shared variable and start it at N1.
    shared_variable = N1;

    pthread_t thread;

    // (b) Launch the child thread.
    do {
        printf("Enter an integer between 10 and 20 (N2): ");
        scanf("%d", &N2);
    } while (N2 < 10 || N2 > 20);

    pthread_create(&thread, NULL, child_thread, &N2);

    // Wait until the child thread terminates.
    pthread_join(thread, NULL);

    // Decrement the shared variable until it reaches 1, printing its value at each iteration.
    while (shared_variable > 1) {
        printf("Main thread: %d\n", shared_variable);
        shared_variable--;
    }

    return 0;
}
