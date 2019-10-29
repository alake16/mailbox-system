#include "../include/entries.h"

void entries_init(entries_t* entries, int address) {
	entries -> address = address;
	entries -> numMessages = 0;
	entries -> currentSize = 2;
	entries -> messages = (message_t*)malloc(2 * sizeof(message_t));
}

void insert_entry(entries_t* entries, message_t* message) {
	entries -> numMessages += 1;
	// need to resize messages array
	if (entries -> numMessages > entries -> currentSize) {
		message_t* oldMessages = entries -> messages;
		entries -> messages = (message_t*)malloc((entries -> currentSize * 2) * sizeof(message_t));
		entries -> messages = oldMessages;
		clean_up_old_messages(oldMessages, entries -> numMessages - 1);
	}
	// messages array has enough spaces
	else {
		entries -> messages[entries -> numMessages - 1] = *message;
	}
}

void clean_up_old_messages(message_t* messages, int numMessages) {
	for (int message = 0; message < numMessages; message++) {
		message_free(&messages[message]);
	}
}