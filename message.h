typedef struct {
	int sender;
	int recipient;
	char* message;
} message_t;

void message_create(message_t* m);

void message_free(message_t* m);