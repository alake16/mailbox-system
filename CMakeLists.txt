cmake_minimum_required (VERSION 3.15.3)
project (mailbox C)
set(CMAKE_C_FLAGS "-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk")
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_C_FLAGS "-pthread")
find_package(Threads REQUIRED)
include_directories(include)
add_executable(mailbox src/main.c src/test.c src/mailbox.c src/entries.c src/message.c)
target_link_libraries(mailbox pthread)

add_executable(try_mailbox src/try_mailbox.c src/mailbox.c src/entries.c src/message.c)
target_link_libraries(mailbox pthread)