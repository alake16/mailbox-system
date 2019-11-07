#include "../include/entries.h"
#include <stdio.h>

void entries_init(entries_t* entries) {
	entries -> numMessages = 0;
	entries -> capacity = 2;
	// Initialize mutex and condition variables
	pthread_mutex_init(&entries -> lock, NULL);
	pthread_cond_init (&entries -> notFull, NULL);
	pthread_cond_init (&entries -> empty, NULL);
	entries -> messages = (message_t*)malloc(entries -> capacity * sizeof(message_t));
}

void entry_send(entries_t* entries, message_t* message) {
	pthread_mutex_lock(&entries -> lock);
	if (entries -> numMessages == entries -> capacity) {
		pthread_cond_wait(&entries -> notFull, &entries -> lock);
		printf("Entries at capacity, waiting to receive message\n");
	}
	insert_entry(entries, message);
	pthread_cond_signal(&entries -> empty);
	pthread_mutex_unlock(&entries -> lock);
}

void insert_entry(entries_t* entries, message_t* message) {
	entries -> messages[entries -> numMessages] = *message;
	entries -> numMessages += 1;
}

message_t* entry_receive(entries_t* entries) {
	pthread_mutex_lock(&entries -> lock);
	if (entries -> numMessages == 0) {
		pthread_cond_wait(&entries -> empty, &entries -> lock);
		printf("Waiting to receive message\n");
	}
	message_t* received = fetch_message(entries);
	pthread_cond_signal(&entries -> notFull);
	pthread_mutex_unlock(&entries -> lock);
	return received;
}

message_t* fetch_message(entries_t* entries) {
	message_t* receivedMessage = &entries -> messages[0];
	for (int message = 1; message < entries -> numMessages; message++) {
		entries -> messages[message - 1] = entries -> messages[message];
	}
	entries -> numMessages -= 1;
	return receivedMessage;
}
