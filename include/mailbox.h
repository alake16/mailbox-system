#include <stdbool.h>
#include "entries.h"

typedef struct {
	int numAddresses;
	entries_t* entries;
} mailbox_t;

void mailbox_init(mailbox_t* mailboxes, int numAddresses);
void mailbox_send(mailbox_t* mailboxes, message_t* message);
message_t* message_receive(mailbox_t* mailboxes, int recipient);
message_t* message_receive_poll(mailbox_t* mailboxes, int recipient);
bool message_available(mailbox_t* mailboxes, int recipient);
bool is_valid_address(int numAddresses, int address);
void mailbox_cleanup(mailbox_t* mailboxes);