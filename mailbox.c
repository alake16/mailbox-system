#include "mailbox.h"
#include <stdlib.h>

void mailbox_init(mailbox_t *mailboxes, int numAddresses) {
	mailboxes -> numAddresses = numAddresses;
}

void mailbox_send(mailbox_t* mailboxes, message_t* message) {
	if (isValidAddress(mailboxes -> numAddresses, message -> sender)) {
		if (isValidAddress(mailboxes -> numAddresses, message -> recipient)) {
			// critical region
		}
		else {
			printf("Recipient address out of range\n");
			exit(1);
		}
	}
	else {
		printf("Sender address out of range\n");
		exit(1);
	}
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

bool isValidAddress(int numAddresses, int address) {
	return address < numAddresses && address > 0;
}