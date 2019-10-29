#include "message.h"
#include "entries.h"
#include <stdbool.h>

typedef struct {
	int id;
	int numAddresses;
	entries_t* entries;
} mailbox_t;

void mailbox_init(mailbox_t* mailboxes, int numAddresses);
void mailbox_send(mailbox_t* mailboxes, message_t* message);
message_t* message_receive(mailbox_t* mailboxes, int receiver);
message_t* message_receive_poll(mailbox_t* mailboxes, int receiver);
int message_available(mailbox_t* mailboxes, int receiver);
bool is_valid_address(int numAddresses, int address);