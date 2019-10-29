#include "../include/entries.h"

void entries_init(entries_t* entries) {
	entries -> numMessages = 0;
	entries -> currentSize = 2;
	entries -> messages = (message_t*)malloc(2 * sizeof(message_t));
}

void insert_entry(entries_t* entries, message_t* message) {
	entries -> numMessages += 1;
	if (entries -> numMessages > entries -> currentSize) {
		message_t* oldMessages = entries -> messages;
		entries -> messages = (message_t*)malloc((entries -> currentSize * 2) * sizeof(message_t));
		entries -> messages = oldMessages;
	}
	else {
		entries -> messages[entries -> numMessages] = *message;
	}
}