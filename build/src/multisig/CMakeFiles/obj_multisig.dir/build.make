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
include src/multisig/CMakeFiles/obj_multisig.dir/depend.make

# Include the progress variables for this target.
include src/multisig/CMakeFiles/obj_multisig.dir/progress.make

# Include the compile flags for this target's objects.
include src/multisig/CMakeFiles/obj_multisig.dir/flags.make

src/multisig/CMakeFiles/obj_multisig.dir/multisig.cpp.o: src/multisig/CMakeFiles/obj_multisig.dir/flags.make
src/multisig/CMakeFiles/obj_multisig.dir/multisig.cpp.o: ../src/multisig/multisig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hvardhan/Projects/challenge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/multisig/CMakeFiles/obj_multisig.dir/multisig.cpp.o"
	cd /Users/hvardhan/Projects/challenge/build/src/multisig && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/obj_multisig.dir/multisig.cpp.o -c /Users/hvardhan/Projects/challenge/src/multisig/multisig.cpp

src/multisig/CMakeFiles/obj_multisig.dir/multisig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obj_multisig.dir/multisig.cpp.i"
	cd /Users/hvardhan/Projects/challenge/build/src/multisig && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hvardhan/Projects/challenge/src/multisig/multisig.cpp > CMakeFiles/obj_multisig.dir/multisig.cpp.i

src/multisig/CMakeFiles/obj_multisig.dir/multisig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obj_multisig.dir/multisig.cpp.s"
	cd /Users/hvardhan/Projects/challenge/build/src/multisig && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hvardhan/Projects/challenge/src/multisig/multisig.cpp -o CMakeFiles/obj_multisig.dir/multisig.cpp.s

obj_multisig: src/multisig/CMakeFiles/obj_multisig.dir/multisig.cpp.o
obj_multisig: src/multisig/CMakeFiles/obj_multisig.dir/build.make

.PHONY : obj_multisig

# Rule to build all files generated by this target.
src/multisig/CMakeFiles/obj_multisig.dir/build: obj_multisig

.PHONY : src/multisig/CMakeFiles/obj_multisig.dir/build

src/multisig/CMakeFiles/obj_multisig.dir/clean:
	cd /Users/hvardhan/Projects/challenge/build/src/multisig && $(CMAKE_COMMAND) -P CMakeFiles/obj_multisig.dir/cmake_clean.cmake
.PHONY : src/multisig/CMakeFiles/obj_multisig.dir/clean

src/multisig/CMakeFiles/obj_multisig.dir/depend:
	cd /Users/hvardhan/Projects/challenge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hvardhan/Projects/challenge /Users/hvardhan/Projects/challenge/src/multisig /Users/hvardhan/Projects/challenge/build /Users/hvardhan/Projects/challenge/build/src/multisig /Users/hvardhan/Projects/challenge/build/src/multisig/CMakeFiles/obj_multisig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/multisig/CMakeFiles/obj_multisig.dir/depend

