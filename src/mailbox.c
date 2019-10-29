#include "../include/mailbox.h"
#include <pthread.h>
#include <stdio.h>

pthread_mutex_t entriesMutex;
pthread_cond_t sendMessage;
pthread_cond_t readMessage;

void mailbox_init(mailbox_t *mailboxes, int numAddresses) {
	mailboxes -> numAddresses = numAddresses;
	mailboxes -> entries = (entries_t*)malloc(numAddresses * sizeof(entries_t)); 
}

void mailbox_send(mailbox_t* mailboxes, message_t* message) {
	if (is_valid_address(mailboxes -> numAddresses, message -> sender)) {
		if (is_valid_address(mailboxes -> numAddresses, message -> recipient)) {
			pthread_mutex_lock(&entriesMutex);
			pthread_cond_signal(&sendMessage);
		    insert_entry(&mailboxes -> entries[message -> recipient], message);
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
	if (is_valid_address(mailboxes -> numAddresses, mailboxes -> entries[recipient].messages -> recipient)) {
		pthread_mutex_lock(&entriesMutex);
		pthread_cond_wait(&readMessage, &entriesMutex);
		message_t* message = fetch_message(mailboxes, recipient);
	    pthread_mutex_unlock (&entriesMutex);
	}
	else {
		printf("Recipient address out of range\n");
		exit(1);
	}
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

message_t* fetch_message(mailbox_t* mailboxes, int recipient) {
	entries_t entry = mailboxes -> entries[recipient];
	message_t* message = &entry.messages[0];
	for (int message = 1; message < entry.numMessages; message++) {
		entry.messages[message - 1] = entry.messages[message];
	}
	entry.numMessages -= 1;
	return message;
}