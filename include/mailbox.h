#ifndef _MAILBOX_H_
#define _MAILBOX_H_

#include <stdbool.h>
#include "entries.h"

typedef struct {
	int numAddresses;
	entries_t* entries;
} mailbox_t;

extern void mailbox_init(mailbox_t* mailboxes, int numAddresses);
extern void mailbox_send(mailbox_t* mailboxes, message_t* message);
extern message_t* message_receive(mailbox_t* mailboxes, int recipient);
extern message_t* message_receive_poll(mailbox_t* mailboxes, int recipient);
extern bool message_available(mailbox_t* mailboxes, int recipient);
extern bool is_valid_address(int numAddresses, int address);
extern void mailbox_cleanup(mailbox_t* mailboxes);

#endif