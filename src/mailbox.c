#include "../include/mailbox.h"
#include <stdio.h>

void mailbox_init(mailbox_t *mailboxes, int numAddresses) {
	mailboxes -> numAddresses = numAddresses;
	mailboxes -> entries = (entries_t*)malloc(numAddresses * sizeof(entries_t)); 
	for (int address = 0; address < numAddresses; address++) {
		entries_init(&mailboxes -> entries[address], address);
	}
}

void mailbox_send(mailbox_t* mailboxes, message_t* message) {
	if (is_valid_address(mailboxes -> numAddresses, message -> sender)) {
		if (is_valid_address(mailboxes -> numAddresses, message -> recipient)) {
			pthread_mutex_lock(&entriesMutex);
			insert_entry(&mailboxes -> entries[message -> recipient], message);
			// signal that a message has been sent
			pthread_cond_signal(&messageSent);
		    pthread_mutex_unlock (&entriesMutex);
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
		pthread_mutex_lock(&entriesMutex);
		// wait for signal that a message has been sent
		pthread_cond_wait(&messageSent, &entriesMutex);
		message_t* message = fetch_message(mailboxes, recipient);
	    pthread_mutex_unlock(&entriesMutex);
	    return message;
	}
	else {
		printf("Recipient address out of range\n");
		exit(1);
	}
}

message_t* message_receive_poll(mailbox_t* mailboxes, int recipient) {
	if (is_valid_address(mailboxes -> numAddresses, mailboxes -> entries[recipient].messages[0].recipient)) {
		pthread_mutex_lock(&entriesMutex);
		pthread_cond_wait(&messageSent, &entriesMutex);
		if (message_available(mailboxes, recipient)) {
			message_t* message = fetch_message(mailboxes, recipient);
			pthread_mutex_unlock(&entriesMutex);
			return message;
		}
		else {
			pthread_mutex_unlock(&entriesMutex);
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

message_t* fetch_message(mailbox_t* mailboxes, int recipient) {
	entries_t entry = mailboxes -> entries[recipient];
	message_t* receivedMessage = &entry.messages[0];
	for (int message = 1; message < entry.numMessages; message++) {
		entry.messages[message - 1] = entry.messages[message];
	}
	entry.numMessages -= 1;
	return receivedMessage;
}

void mailbox_cleanup(mailbox_t* mailboxes) {
	free(mailboxes -> entries);
}