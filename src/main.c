#include <stdio.h>
#include "../include/test.h"

int main(int argc, char *argv[]) {
    testSendThenReceive();
    testReceiveThenSend();
    return 0;
}
