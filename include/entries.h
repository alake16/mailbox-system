#include "message.h"

typedef struct {
	int numMessages;
	int currentSize;
	message_t* messages;
} entries_t;

void entries_init(entries_t* entries);
void insert_entry(entries_t* entries, message_t* message);