#include "mailbox.h"
#include <stdlib.h>

void mailbox_init(mailbox_t *mailboxes, int numAddresses) {
	mailboxes -> numAddresses = numAddresses;
	mailboxes -> entries = (entries_t*)malloc(numAddresses * sizeof(entries_t)); 
}

void mailbox_send(mailbox_t* mailboxes, message_t* message) {
	if (is_valid_address(mailboxes -> numAddresses, message -> sender)) {
		if (is_valid_address(mailboxes -> numAddresses, message -> recipient)) {
			pthread_mutex_lock(&mutexMessages);
		    insert_entry(mailboxes -> entries[mailboxes -> recipient], mailboxes -> numAddresses);
		    pthread_mutex_unlock (&mutexMessages);
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

bool is_valid_address(int numAddresses, int address) {
	return address < numAddresses && address > 0;
}