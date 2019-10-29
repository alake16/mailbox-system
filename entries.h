typedef struct {
	int numMessages;
	int currentSize;
	message_t* messages;
} entries_t;

void entries_init(entries_t* entries);
void insert_entry(message_t* message);