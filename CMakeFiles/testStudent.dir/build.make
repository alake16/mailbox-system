# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.15.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.15.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aclake/luc/comp310/hw2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aclake/luc/comp310/hw2

# Include any dependencies generated for this target.
include CMakeFiles/testStudent.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testStudent.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testStudent.dir/flags.make

CMakeFiles/testStudent.dir/src/main.c.o: CMakeFiles/testStudent.dir/flags.make
CMakeFiles/testStudent.dir/src/main.c.o: src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/testStudent.dir/src/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testStudent.dir/src/main.c.o   -c /Users/aclake/luc/comp310/hw2/src/main.c

CMakeFiles/testStudent.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testStudent.dir/src/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aclake/luc/comp310/hw2/src/main.c > CMakeFiles/testStudent.dir/src/main.c.i

CMakeFiles/testStudent.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testStudent.dir/src/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aclake/luc/comp310/hw2/src/main.c -o CMakeFiles/testStudent.dir/src/main.c.s

CMakeFiles/testStudent.dir/src/mailbox.c.o: CMakeFiles/testStudent.dir/flags.make
CMakeFiles/testStudent.dir/src/mailbox.c.o: src/mailbox.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/testStudent.dir/src/mailbox.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testStudent.dir/src/mailbox.c.o   -c /Users/aclake/luc/comp310/hw2/src/mailbox.c

CMakeFiles/testStudent.dir/src/mailbox.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testStudent.dir/src/mailbox.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aclake/luc/comp310/hw2/src/mailbox.c > CMakeFiles/testStudent.dir/src/mailbox.c.i

CMakeFiles/testStudent.dir/src/mailbox.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testStudent.dir/src/mailbox.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aclake/luc/comp310/hw2/src/mailbox.c -o CMakeFiles/testStudent.dir/src/mailbox.c.s

CMakeFiles/testStudent.dir/src/message.c.o: CMakeFiles/testStudent.dir/flags.make
CMakeFiles/testStudent.dir/src/message.c.o: src/message.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/testStudent.dir/src/message.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testStudent.dir/src/message.c.o   -c /Users/aclake/luc/comp310/hw2/src/message.c

CMakeFiles/testStudent.dir/src/message.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testStudent.dir/src/message.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aclake/luc/comp310/hw2/src/message.c > CMakeFiles/testStudent.dir/src/message.c.i

CMakeFiles/testStudent.dir/src/message.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testStudent.dir/src/message.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aclake/luc/comp310/hw2/src/message.c -o CMakeFiles/testStudent.dir/src/message.c.s

CMakeFiles/testStudent.dir/src/entries.c.o: CMakeFiles/testStudent.dir/flags.make
CMakeFiles/testStudent.dir/src/entries.c.o: src/entries.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/testStudent.dir/src/entries.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/testStudent.dir/src/entries.c.o   -c /Users/aclake/luc/comp310/hw2/src/entries.c

CMakeFiles/testStudent.dir/src/entries.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/testStudent.dir/src/entries.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aclake/luc/comp310/hw2/src/entries.c > CMakeFiles/testStudent.dir/src/entries.c.i

CMakeFiles/testStudent.dir/src/entries.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/testStudent.dir/src/entries.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aclake/luc/comp310/hw2/src/entries.c -o CMakeFiles/testStudent.dir/src/entries.c.s

# Object files for target testStudent
testStudent_OBJECTS = \
"CMakeFiles/testStudent.dir/src/main.c.o" \
"CMakeFiles/testStudent.dir/src/mailbox.c.o" \
"CMakeFiles/testStudent.dir/src/message.c.o" \
"CMakeFiles/testStudent.dir/src/entries.c.o"

# External object files for target testStudent
testStudent_EXTERNAL_OBJECTS =

testStudent: CMakeFiles/testStudent.dir/src/main.c.o
testStudent: CMakeFiles/testStudent.dir/src/mailbox.c.o
testStudent: CMakeFiles/testStudent.dir/src/message.c.o
testStudent: CMakeFiles/testStudent.dir/src/entries.c.o
testStudent: CMakeFiles/testStudent.dir/build.make
testStudent: CMakeFiles/testStudent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable testStudent"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testStudent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testStudent.dir/build: testStudent

.PHONY : CMakeFiles/testStudent.dir/build

CMakeFiles/testStudent.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testStudent.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testStudent.dir/clean

CMakeFiles/testStudent.dir/depend:
	cd /Users/aclake/luc/comp310/hw2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aclake/luc/comp310/hw2 /Users/aclake/luc/comp310/hw2 /Users/aclake/luc/comp310/hw2 /Users/aclake/luc/comp310/hw2 /Users/aclake/luc/comp310/hw2/CMakeFiles/testStudent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testStudent.dir/depend

