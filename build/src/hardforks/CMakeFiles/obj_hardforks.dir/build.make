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
include src/hardforks/CMakeFiles/obj_hardforks.dir/depend.make

# Include the progress variables for this target.
include src/hardforks/CMakeFiles/obj_hardforks.dir/progress.make

# Include the compile flags for this target's objects.
include src/hardforks/CMakeFiles/obj_hardforks.dir/flags.make

src/hardforks/CMakeFiles/obj_hardforks.dir/hardforks.cpp.o: src/hardforks/CMakeFiles/obj_hardforks.dir/flags.make
src/hardforks/CMakeFiles/obj_hardforks.dir/hardforks.cpp.o: ../src/hardforks/hardforks.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hvardhan/Projects/challenge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/hardforks/CMakeFiles/obj_hardforks.dir/hardforks.cpp.o"
	cd /Users/hvardhan/Projects/challenge/build/src/hardforks && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/obj_hardforks.dir/hardforks.cpp.o -c /Users/hvardhan/Projects/challenge/src/hardforks/hardforks.cpp

src/hardforks/CMakeFiles/obj_hardforks.dir/hardforks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obj_hardforks.dir/hardforks.cpp.i"
	cd /Users/hvardhan/Projects/challenge/build/src/hardforks && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hvardhan/Projects/challenge/src/hardforks/hardforks.cpp > CMakeFiles/obj_hardforks.dir/hardforks.cpp.i

src/hardforks/CMakeFiles/obj_hardforks.dir/hardforks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obj_hardforks.dir/hardforks.cpp.s"
	cd /Users/hvardhan/Projects/challenge/build/src/hardforks && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hvardhan/Projects/challenge/src/hardforks/hardforks.cpp -o CMakeFiles/obj_hardforks.dir/hardforks.cpp.s

obj_hardforks: src/hardforks/CMakeFiles/obj_hardforks.dir/hardforks.cpp.o
obj_hardforks: src/hardforks/CMakeFiles/obj_hardforks.dir/build.make

.PHONY : obj_hardforks

# Rule to build all files generated by this target.
src/hardforks/CMakeFiles/obj_hardforks.dir/build: obj_hardforks

.PHONY : src/hardforks/CMakeFiles/obj_hardforks.dir/build

src/hardforks/CMakeFiles/obj_hardforks.dir/clean:
	cd /Users/hvardhan/Projects/challenge/build/src/hardforks && $(CMAKE_COMMAND) -P CMakeFiles/obj_hardforks.dir/cmake_clean.cmake
.PHONY : src/hardforks/CMakeFiles/obj_hardforks.dir/clean

src/hardforks/CMakeFiles/obj_hardforks.dir/depend:
	cd /Users/hvardhan/Projects/challenge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hvardhan/Projects/challenge /Users/hvardhan/Projects/challenge/src/hardforks /Users/hvardhan/Projects/challenge/build /Users/hvardhan/Projects/challenge/build/src/hardforks /Users/hvardhan/Projects/challenge/build/src/hardforks/CMakeFiles/obj_hardforks.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/hardforks/CMakeFiles/obj_hardforks.dir/depend
