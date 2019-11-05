#include "../include/mailbox.h"
#include <stdio.h>

void mailbox_init(mailbox_t *mailboxes, int numAddresses) {
	mailboxes -> numAddresses = numAddresses;
	mailboxes -> entries = (entries_t*)malloc(numAddresses * sizeof(entries_t)); 
	for (int address = 0; address < numAddresses; address++) {
		entries_init(&mailboxes -> entries[address]);
	}
}

void mailbox_send(mailbox_t* mailboxes, message_t* message) {
	if (is_valid_address(mailboxes -> numAddresses, message -> sender)) {
		if (is_valid_address(mailboxes -> numAddresses, message -> recipient)) {
			entry_receive(&mailboxes -> entries[message -> recipient]);
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

message_t* message_receive(mailbox_t* mailboxes, int recipient) {
	if (is_valid_address(mailboxes -> numAddresses, mailboxes -> entries[recipient].messages[0].recipient)) {
		return entry_receive(&mailboxes -> entries[recipient]);
	}
	else {
		printf("Recipient address out of range\n");
		exit(1);
	}
}

message_t* message_receive_poll(mailbox_t* mailboxes, int recipient) {
	if (is_valid_address(mailboxes -> numAddresses, mailboxes -> entries[recipient].messages[0].recipient)) {
		if (message_available(mailboxes, recipient)) {
			return entry_receive(&mailboxes -> entries[recipient]);
		}
		else {
			return NULL;
		}
	}
	else {
		printf("Recipient address out of range\n");
		exit(1);
	}
}

bool message_available(mailbox_t* mailboxes, int recipient) {
	return mailboxes -> entries[recipient].numMessages > 0;
}

bool is_valid_address(int numAddresses, int address) {
	return address < numAddresses && address >= 0;
}

void mailbox_cleanup(mailbox_t* mailboxes) {
	free(mailboxes -> entries);
}