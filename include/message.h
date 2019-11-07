#ifndef _MESSAGE_H_
#define _MESSAGE_H_

#include <stdlib.h>

typedef struct {
	int sender;
	int recipient;
	char* messageContent;
} message_t;

void message_init(message_t* m, int sender, int receiver, char* messageContent);
void message_free(message_t* m);

#endif