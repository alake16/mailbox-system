#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "mailbox.h"

#define NUMBER_OF_PRODUCERS  2
#define NUMBER_OF_CONSUMERS  1
#define NUM_THREADS ((NUMBER_OF_PRODUCERS) + (NUMBER_OF_CONSUMERS))
#define MESSAGE_SLOTS 5
#define GCOUNT 10
#define MAX_DATA 100

typedef struct thread_state {
   mailbox_t* mailbox;
   long id;
} thread_specific_data_t;

/* Each producing thread produces GCOUNT messages */
void *produce(void *thread_arg)
{
    char data[MAX_DATA];
    thread_specific_data_t* state = (thread_specific_data_t*)thread_arg;
    long my_id = state->id;
    mailbox_t* mailbox = state->mailbox;

    printf("Starting produce() thread %ld\n", my_id);
    for (int i=0; i < GCOUNT; i++) {
        sprintf(data, "thread_%ld_message_%d", my_id, i);
        message_t message;
        message_init(&message, my_id, 0L, data);
        printf("Sending %s from thread %ld to thread %ld\n",data,my_id, 0L);
        mailbox_send(mailbox, &message);
    }
    message_t* ack = message_receive(mailbox, my_id);
    printf("Acknowledgement received: %s\n", ack->messageContent);
    pthread_exit(NULL);
}

/* NB: consume() is always thread 0 */
void *consume(void *thread_arg)
{
    thread_specific_data_t* state = (thread_specific_data_t*)thread_arg;
    long my_id = state->id;
    mailbox_t* mailbox = state->mailbox;
    char data[MAX_DATA];
    printf("Starting consume() thread %ld\n", my_id);

    for (int i=0; i < NUMBER_OF_PRODUCERS * GCOUNT; i++) {
      message_t* incoming = message_receive(mailbox, my_id);
      printf("consume() thread %ld received: %s\n", my_id, incoming->messageContent);
    }

    printf("Consumer thread id %ld received %d messages\n", my_id, GCOUNT);

    for (int i=1; i <= NUMBER_OF_PRODUCERS; i++) {
        sprintf(data, "thankyou_thread_%ld_messages_%d", (long)i, GCOUNT);
        printf("Sending Acknowledgment from thread %ld to thread %ld: %s\n", my_id, (long)i, data);
        message_t message;
        message_init(&message, my_id, 0L, data);
        mailbox_send(mailbox, &message);
    }

    pthread_exit(NULL);
}

int main (int argc, char *argv[])
{
    int i, rc;
    long t0=0;
    pthread_t threads[NUM_THREADS];
    thread_specific_data_t thread_state[NUM_THREADS];
    pthread_attr_t attr;

    /* inialize mailbox communcation system */

    mailbox_t* mailbox;
    mailbox_init(mailbox, NUM_THREADS);


    /* For portability, explicitly create threads in a joinable state */
    /* Threads 1 and 2 will send messages to 0 */
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
    thread_state[0].mailbox = mailbox;
    thread_state[0].id = 0L;
    pthread_create(&threads[0], &attr, consume, (void *)&thread_state[0]);
    for (long p=1; p <= NUMBER_OF_PRODUCERS; p++) {
      thread_state[p].mailbox = mailbox;
      thread_state[p].id = p;
      pthread_create(&threads[p], &attr, produce, (void *)&thread_state[p]);
    }

    /* Wait for all threads to complete */
    for (i=0; i<NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }
    printf ("Main(): Waited on %d  threads. Done.\n", NUM_THREADS);

    /* Clean up and exit */
    pthread_attr_destroy(&attr);
    pthread_exit(NULL);
}

