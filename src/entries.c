#include <pthread.h>
#include "../include/entries.h"

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
	ptrhead_mutex_lock(&entries -> lock);
	if (entries -> numMessages == entries -> capacity) {
		pthread_cond_wait(&entries -> notFull, &entries -> lock);
	}
	insert_entry(entries, message);
	// check if message array is full
		// if it is, pthread_cond_wait(&entries -> lock, &entries -> notFull)
	// add the message to the messages array
	pthread_cond_signal(&entries -> empty);
	ptrhead_mutex_unlock(&entries -> lock);
}

void insert_entry(entries_t* entries, message_t* message) {
	entries -> messages[entries -> numMessages] = *message;
	entries -> numMessages += 1;
}

message_t* entry_receive(entries_t* entries) {
	ptrhead_mutex_lock(&entries -> lock);
	if (entries -> numMessages == 0) {
		pthread_cond_wait(&entries -> empty, &entries -> lock);
	}

	// check if message array is empty
		// if it is, pthread_cond_wait(&entries -> lock, &entries -> empty)
	// remove the message to the messages array and save it
	message_t* received = fetch_message(entries);
	pthread_cond_signal(&entries -> notFull);
	ptrhead_mutex_unlock(&entries -> lock);
	// return the message
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
