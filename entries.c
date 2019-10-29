#include "entry.h"

void entries_init(entries_t* entries) {
	entries -> numMessages = 0;
	entries -> currentSize = 2;
	entries -> messages = (messages*)malloc(2 * sizeof(message_t));
}

void insert_entry(entries_t* entries, message_t* message) {
	entries -> numMessages += 1;
	if (entries -> numMessages > entries -> currentSize) {
		messages* oldMessages = entries -> messages;
		entries -> messages = (messages*)malloc((entries -> currentSize * 2) * sizeof(message_t));
		entries -> messages = oldMessages;
		entries 
	}
	else {
		entries -> messages[numMessages] = message;
	}
}