# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.16.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.16.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hvardhan/Projects/challenge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hvardhan/Projects/challenge/build

# Include any dependencies generated for this target.
include src/lmdb/CMakeFiles/lmdb_lib.dir/depend.make

# Include the progress variables for this target.
include src/lmdb/CMakeFiles/lmdb_lib.dir/progress.make

# Include the compile flags for this target's objects.
include src/lmdb/CMakeFiles/lmdb_lib.dir/flags.make

# Object files for target lmdb_lib
lmdb_lib_OBJECTS =

# External object files for target lmdb_lib
lmdb_lib_EXTERNAL_OBJECTS = \
"/Users/hvardhan/Projects/challenge/build/src/lmdb/CMakeFiles/obj_lmdb_lib.dir/database.cpp.o" \
"/Users/hvardhan/Projects/challenge/build/src/lmdb/CMakeFiles/obj_lmdb_lib.dir/error.cpp.o" \
"/Users/hvardhan/Projects/challenge/build/src/lmdb/CMakeFiles/obj_lmdb_lib.dir/table.cpp.o" \
"/Users/hvardhan/Projects/challenge/build/src/lmdb/CMakeFiles/obj_lmdb_lib.dir/value_stream.cpp.o"

src/lmdb/liblmdb_lib.a: src/lmdb/CMakeFiles/obj_lmdb_lib.dir/database.cpp.o
src/lmdb/liblmdb_lib.a: src/lmdb/CMakeFiles/obj_lmdb_lib.dir/error.cpp.o
src/lmdb/liblmdb_lib.a: src/lmdb/CMakeFiles/obj_lmdb_lib.dir/table.cpp.o
src/lmdb/liblmdb_lib.a: src/lmdb/CMakeFiles/obj_lmdb_lib.dir/value_stream.cpp.o
src/lmdb/liblmdb_lib.a: src/lmdb/CMakeFiles/lmdb_lib.dir/build.make
src/lmdb/liblmdb_lib.a: src/lmdb/CMakeFiles/lmdb_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hvardhan/Projects/challenge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library liblmdb_lib.a"
	cd /Users/hvardhan/Projects/challenge/build/src/lmdb && $(CMAKE_COMMAND) -P CMakeFiles/lmdb_lib.dir/cmake_clean_target.cmake
	cd /Users/hvardhan/Projects/challenge/build/src/lmdb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lmdb_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lmdb/CMakeFiles/lmdb_lib.dir/build: src/lmdb/liblmdb_lib.a

.PHONY : src/lmdb/CMakeFiles/lmdb_lib.dir/build

src/lmdb/CMakeFiles/lmdb_lib.dir/clean:
	cd /Users/hvardhan/Projects/challenge/build/src/lmdb && $(CMAKE_COMMAND) -P CMakeFiles/lmdb_lib.dir/cmake_clean.cmake
.PHONY : src/lmdb/CMakeFiles/lmdb_lib.dir/clean

src/lmdb/CMakeFiles/lmdb_lib.dir/depend:
	cd /Users/hvardhan/Projects/challenge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hvardhan/Projects/challenge /Users/hvardhan/Projects/challenge/src/lmdb /Users/hvardhan/Projects/challenge/build /Users/hvardhan/Projects/challenge/build/src/lmdb /Users/hvardhan/Projects/challenge/build/src/lmdb/CMakeFiles/lmdb_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lmdb/CMakeFiles/lmdb_lib.dir/depend

