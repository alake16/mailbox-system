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
include CMakeFiles/try_mailbox.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/try_mailbox.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/try_mailbox.dir/flags.make

CMakeFiles/try_mailbox.dir/src/try_mailbox.c.o: CMakeFiles/try_mailbox.dir/flags.make
CMakeFiles/try_mailbox.dir/src/try_mailbox.c.o: src/try_mailbox.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/try_mailbox.dir/src/try_mailbox.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/try_mailbox.dir/src/try_mailbox.c.o   -c /Users/aclake/luc/comp310/hw2/src/try_mailbox.c

CMakeFiles/try_mailbox.dir/src/try_mailbox.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/try_mailbox.dir/src/try_mailbox.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aclake/luc/comp310/hw2/src/try_mailbox.c > CMakeFiles/try_mailbox.dir/src/try_mailbox.c.i

CMakeFiles/try_mailbox.dir/src/try_mailbox.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/try_mailbox.dir/src/try_mailbox.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aclake/luc/comp310/hw2/src/try_mailbox.c -o CMakeFiles/try_mailbox.dir/src/try_mailbox.c.s

CMakeFiles/try_mailbox.dir/src/mailbox.c.o: CMakeFiles/try_mailbox.dir/flags.make
CMakeFiles/try_mailbox.dir/src/mailbox.c.o: src/mailbox.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/try_mailbox.dir/src/mailbox.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/try_mailbox.dir/src/mailbox.c.o   -c /Users/aclake/luc/comp310/hw2/src/mailbox.c

CMakeFiles/try_mailbox.dir/src/mailbox.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/try_mailbox.dir/src/mailbox.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aclake/luc/comp310/hw2/src/mailbox.c > CMakeFiles/try_mailbox.dir/src/mailbox.c.i

CMakeFiles/try_mailbox.dir/src/mailbox.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/try_mailbox.dir/src/mailbox.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aclake/luc/comp310/hw2/src/mailbox.c -o CMakeFiles/try_mailbox.dir/src/mailbox.c.s

CMakeFiles/try_mailbox.dir/src/entries.c.o: CMakeFiles/try_mailbox.dir/flags.make
CMakeFiles/try_mailbox.dir/src/entries.c.o: src/entries.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/try_mailbox.dir/src/entries.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/try_mailbox.dir/src/entries.c.o   -c /Users/aclake/luc/comp310/hw2/src/entries.c

CMakeFiles/try_mailbox.dir/src/entries.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/try_mailbox.dir/src/entries.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aclake/luc/comp310/hw2/src/entries.c > CMakeFiles/try_mailbox.dir/src/entries.c.i

CMakeFiles/try_mailbox.dir/src/entries.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/try_mailbox.dir/src/entries.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aclake/luc/comp310/hw2/src/entries.c -o CMakeFiles/try_mailbox.dir/src/entries.c.s

CMakeFiles/try_mailbox.dir/src/message.c.o: CMakeFiles/try_mailbox.dir/flags.make
CMakeFiles/try_mailbox.dir/src/message.c.o: src/message.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/try_mailbox.dir/src/message.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/try_mailbox.dir/src/message.c.o   -c /Users/aclake/luc/comp310/hw2/src/message.c

CMakeFiles/try_mailbox.dir/src/message.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/try_mailbox.dir/src/message.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aclake/luc/comp310/hw2/src/message.c > CMakeFiles/try_mailbox.dir/src/message.c.i

CMakeFiles/try_mailbox.dir/src/message.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/try_mailbox.dir/src/message.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aclake/luc/comp310/hw2/src/message.c -o CMakeFiles/try_mailbox.dir/src/message.c.s

# Object files for target try_mailbox
try_mailbox_OBJECTS = \
"CMakeFiles/try_mailbox.dir/src/try_mailbox.c.o" \
"CMakeFiles/try_mailbox.dir/src/mailbox.c.o" \
"CMakeFiles/try_mailbox.dir/src/entries.c.o" \
"CMakeFiles/try_mailbox.dir/src/message.c.o"

# External object files for target try_mailbox
try_mailbox_EXTERNAL_OBJECTS =

try_mailbox: CMakeFiles/try_mailbox.dir/src/try_mailbox.c.o
try_mailbox: CMakeFiles/try_mailbox.dir/src/mailbox.c.o
try_mailbox: CMakeFiles/try_mailbox.dir/src/entries.c.o
try_mailbox: CMakeFiles/try_mailbox.dir/src/message.c.o
try_mailbox: CMakeFiles/try_mailbox.dir/build.make
try_mailbox: CMakeFiles/try_mailbox.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aclake/luc/comp310/hw2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable try_mailbox"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/try_mailbox.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/try_mailbox.dir/build: try_mailbox

.PHONY : CMakeFiles/try_mailbox.dir/build

CMakeFiles/try_mailbox.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/try_mailbox.dir/cmake_clean.cmake
.PHONY : CMakeFiles/try_mailbox.dir/clean

CMakeFiles/try_mailbox.dir/depend:
	cd /Users/aclake/luc/comp310/hw2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aclake/luc/comp310/hw2 /Users/aclake/luc/comp310/hw2 /Users/aclake/luc/comp310/hw2 /Users/aclake/luc/comp310/hw2 /Users/aclake/luc/comp310/hw2/CMakeFiles/try_mailbox.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/try_mailbox.dir/depend

