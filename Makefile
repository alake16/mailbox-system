# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.15.3/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.15.3/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/aclake/luc/comp310/hw2/CMakeFiles /Users/aclake/luc/comp310/hw2/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/aclake/luc/comp310/hw2/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named mailbox

# Build rule for target.
mailbox: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 mailbox
.PHONY : mailbox

# fast build rule for target.
mailbox/fast:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/build
.PHONY : mailbox/fast

src/entries.o: src/entries.c.o

.PHONY : src/entries.o

# target to build an object file
src/entries.c.o:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/entries.c.o
.PHONY : src/entries.c.o

src/entries.i: src/entries.c.i

.PHONY : src/entries.i

# target to preprocess a source file
src/entries.c.i:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/entries.c.i
.PHONY : src/entries.c.i

src/entries.s: src/entries.c.s

.PHONY : src/entries.s

# target to generate assembly for a file
src/entries.c.s:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/entries.c.s
.PHONY : src/entries.c.s

src/mailbox.o: src/mailbox.c.o

.PHONY : src/mailbox.o

# target to build an object file
src/mailbox.c.o:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/mailbox.c.o
.PHONY : src/mailbox.c.o

src/mailbox.i: src/mailbox.c.i

.PHONY : src/mailbox.i

# target to preprocess a source file
src/mailbox.c.i:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/mailbox.c.i
.PHONY : src/mailbox.c.i

src/mailbox.s: src/mailbox.c.s

.PHONY : src/mailbox.s

# target to generate assembly for a file
src/mailbox.c.s:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/mailbox.c.s
.PHONY : src/mailbox.c.s

src/main.o: src/main.c.o

.PHONY : src/main.o

# target to build an object file
src/main.c.o:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/main.c.o
.PHONY : src/main.c.o

src/main.i: src/main.c.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.c.i:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/main.c.i
.PHONY : src/main.c.i

src/main.s: src/main.c.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.c.s:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/main.c.s
.PHONY : src/main.c.s

src/message.o: src/message.c.o

.PHONY : src/message.o

# target to build an object file
src/message.c.o:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/message.c.o
.PHONY : src/message.c.o

src/message.i: src/message.c.i

.PHONY : src/message.i

# target to preprocess a source file
src/message.c.i:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/message.c.i
.PHONY : src/message.c.i

src/message.s: src/message.c.s

.PHONY : src/message.s

# target to generate assembly for a file
src/message.c.s:
	$(MAKE) -f CMakeFiles/mailbox.dir/build.make CMakeFiles/mailbox.dir/src/message.c.s
.PHONY : src/message.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... mailbox"
	@echo "... src/entries.o"
	@echo "... src/entries.i"
	@echo "... src/entries.s"
	@echo "... src/mailbox.o"
	@echo "... src/mailbox.i"
	@echo "... src/mailbox.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/message.o"
	@echo "... src/message.i"
	@echo "... src/message.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

