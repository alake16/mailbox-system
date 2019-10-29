#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include "../include/mailbox.h"
#define NUM_THREADS 2
#define NUM_ADDRESSES 5

typedef struct {
    mailbox_t* mailboxes;
    message_t* message;
    int recipient;
} args;

void *sendMessage(args *args) {
    mailbox_send(args -> mailboxes, args -> message);
    printf("Message Sent: %s\n", (args -> message) -> messageContent);
    pthread_exit(NULL);
}

void *receiveMessage(args *args) {
    message_t* message = message_receive(args -> mailboxes, args -> recipient);
    printf("Message Received: %s\n", message -> messageContent);
    pthread_exit(NULL);
}

void *PrintHello(void *threadid) {
    long tid;
    tid = (long)threadid;
    printf("Hello World! It's me, thread #%ld!\n", tid);
    pthread_exit(NULL);
}

int main(int argc, char *argv[]) {
    mailbox_t mailboxes;
    mailbox_init(&mailboxes, NUM_ADDRESSES);
    /* Initialize threads, mutex, and condition variable objects */
    pthread_t threads[NUM_THREADS];
    pthread_mutex_init(&entriesMutex, NULL);
    pthread_cond_init (&messageSent, NULL);
    message_t message;
    message_init(&message, 0, 1, "Hello");
    args argsSend;
    argsSend.mailboxes = &mailboxes;
    argsSend.message = &message;
    args argsReceive;
    argsReceive.mailboxes = &mailboxes;
    argsReceive.recipient = 1;
    pthread_create(&threads[0], NULL, sendMessage, &argsSend);
    pthread_create(&threads[1], NULL, receiveMessage, &argsReceive);
    pthread_mutex_destroy(&entriesMutex);
    pthread_cond_destroy(&messageSent);
    pthread_exit(NULL);
    return 0;
}
