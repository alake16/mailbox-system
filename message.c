#include "message.h"

void message_create(message_t* m) {
	
}

void message_free(message_t* m) {
	free(m -> messageContent);
}