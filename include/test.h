#ifndef _TEST_H_
#define _TEST_H_

#include "mailbox.h"

typedef struct {
    mailbox_t* mailboxes;
    message_t* message;
    int recipient;
} args;

#define NUM_THREADS 2
#define NUM_ADDRESSES 2

extern void *sendMessage(void *voidData);
extern void *receiveMessage(void *voidData);
extern void testSendThenReceive();
extern void testReceiveThenSend();

#endif