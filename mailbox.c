#include "mailbox.h"
#include <stdlib.h>

void mailbox_init(mailbox_t* mailboxes, int numAddresses) {

}

void mailbox_send(mailbox_t* mailboxes, message_t* message) {

}

message_t* message_receive(mailbox_t* mailboxes, int receiver) {
	message_t message;
	return &message;
}

message_t* message_receive_poll(mailbox_t* mailboxes, int receiver) {
	message_t message;
	return &message;
}

int message_available(mailbox_t* mailboxes, int receiver) {
	return 0;
}