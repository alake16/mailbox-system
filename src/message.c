#include "../include/message.h"

void message_init(message_t* m, int sender, int recipient, char* messageContent) {
	m -> messageContent = (char*)malloc(sizeof(messageContent) / sizeof(messageContent[0]) * sizeof(char));
	m -> messageContent = messageContent;
	m -> sender = sender;
	m -> recipient = recipient;
}

void message_free(message_t* m) {
	free(m -> messageContent);
}