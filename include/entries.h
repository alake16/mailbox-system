#include "message.h"

typedef struct {
	int address;
	int numMessages;
	int currentSize;
	message_t* messages;
} entries_t;

void entries_init(entries_t* entries, int address);
void insert_entry(entries_t* entries, message_t* message);
void clean_up_old_messages(message_t* messages, int numMessages);