cmake_minimum_required (VERSION 2.6)
project (mailbox)
set (CMAKE_C_FLAGS "-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk")
add_executable(mailbox main.c)
