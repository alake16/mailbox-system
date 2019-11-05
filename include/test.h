#include "mailbox.h"

typedef struct {
    mailbox_t* mailboxes;
    message_t* message;
    int recipient;
} args;

#define NUM_THREADS 2
#define NUM_ADDRESSES 2

void *sendMessage(void *voidData);
void *receiveMessage(void *voidData);
void testSendThenReceive();
void testReceiveThenSend();