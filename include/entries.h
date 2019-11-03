#include <pthread.h>
#include "message.h"

typedef struct {
	int numMessages;
	int capacity;
	message_t* messages;
	pthread_mutex_t lock;
	pthread_cond_t notFull, empty;
} entries_t;

// typedef struct {
// 	int address;
// 	int numMessages;
// 	int currentSize;
// 	message_t* messages;
// } entries_t;

void entries_init(entries_t* entries);
void entry_send(entries_t* entries, message_t* message);
void insert_entry(entries_t* entries, message_t* message);
message_t* entry_receive(entries_t* entries);
message_t* fetch_message(entries_t* entries);