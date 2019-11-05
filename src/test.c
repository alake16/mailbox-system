#include "test.h"

void *sendMessage(void *voidData) {
    args *args = voidData;
    mailbox_send(args -> mailboxes, args -> message);
    printf("Message Sent: %s\n", (args -> message) -> messageContent);
    pthread_exit(NULL);
}

void *receiveMessage(void *voidData) {
    args *args = voidData;
    message_t* message = message_receive(args -> mailboxes, args -> recipient);
    printf("Message Received: %s\n", message -> messageContent);
    pthread_exit(NULL);
}

void testSendThenReceive() {
	mailbox_t mailboxes;
    mailbox_init(&mailboxes, NUM_ADDRESSES);
    pthread_t threads[NUM_THREADS];
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
    mailbox_cleanup(&mailboxes);
    pthread_exit(NULL);
}

void testReceiveThenSend() {
	mailbox_t mailboxes;
    mailbox_init(&mailboxes, NUM_ADDRESSES);
    pthread_t threads[NUM_THREADS];
    message_t message;
    message_init(&message, 0, 1, "Hello");
    args argsSend;
    argsSend.mailboxes = &mailboxes;
    argsSend.message = &message;
    args argsReceive;
    argsReceive.mailboxes = &mailboxes;
    argsReceive.recipient = 1;
    pthread_create(&threads[1], NULL, receiveMessage, &argsReceive);
    pthread_create(&threads[0], NULL, sendMessage, &argsSend);
    mailbox_cleanup(&mailboxes);
    pthread_exit(NULL);
}