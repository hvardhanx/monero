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
include src/serialization/CMakeFiles/obj_serialization.dir/depend.make

# Include the progress variables for this target.
include src/serialization/CMakeFiles/obj_serialization.dir/progress.make

# Include the compile flags for this target's objects.
include src/serialization/CMakeFiles/obj_serialization.dir/flags.make

src/serialization/CMakeFiles/obj_serialization.dir/json_object.cpp.o: src/serialization/CMakeFiles/obj_serialization.dir/flags.make
src/serialization/CMakeFiles/obj_serialization.dir/json_object.cpp.o: ../src/serialization/json_object.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hvardhan/Projects/challenge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/serialization/CMakeFiles/obj_serialization.dir/json_object.cpp.o"
	cd /Users/hvardhan/Projects/challenge/build/src/serialization && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/obj_serialization.dir/json_object.cpp.o -c /Users/hvardhan/Projects/challenge/src/serialization/json_object.cpp

src/serialization/CMakeFiles/obj_serialization.dir/json_object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obj_serialization.dir/json_object.cpp.i"
	cd /Users/hvardhan/Projects/challenge/build/src/serialization && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hvardhan/Projects/challenge/src/serialization/json_object.cpp > CMakeFiles/obj_serialization.dir/json_object.cpp.i

src/serialization/CMakeFiles/obj_serialization.dir/json_object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obj_serialization.dir/json_object.cpp.s"
	cd /Users/hvardhan/Projects/challenge/build/src/serialization && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hvardhan/Projects/challenge/src/serialization/json_object.cpp -o CMakeFiles/obj_serialization.dir/json_object.cpp.s

obj_serialization: src/serialization/CMakeFiles/obj_serialization.dir/json_object.cpp.o
obj_serialization: src/serialization/CMakeFiles/obj_serialization.dir/build.make

.PHONY : obj_serialization

# Rule to build all files generated by this target.
src/serialization/CMakeFiles/obj_serialization.dir/build: obj_serialization

.PHONY : src/serialization/CMakeFiles/obj_serialization.dir/build

src/serialization/CMakeFiles/obj_serialization.dir/clean:
	cd /Users/hvardhan/Projects/challenge/build/src/serialization && $(CMAKE_COMMAND) -P CMakeFiles/obj_serialization.dir/cmake_clean.cmake
.PHONY : src/serialization/CMakeFiles/obj_serialization.dir/clean

src/serialization/CMakeFiles/obj_serialization.dir/depend:
	cd /Users/hvardhan/Projects/challenge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hvardhan/Projects/challenge /Users/hvardhan/Projects/challenge/src/serialization /Users/hvardhan/Projects/challenge/build /Users/hvardhan/Projects/challenge/build/src/serialization /Users/hvardhan/Projects/challenge/build/src/serialization/CMakeFiles/obj_serialization.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/serialization/CMakeFiles/obj_serialization.dir/depend
