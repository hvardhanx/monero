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
include src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/depend.make

# Include the progress variables for this target.
include src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/progress.make

# Include the compile flags for this target's objects.
include src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/flags.make

src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.o: src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/flags.make
src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.o: ../src/blockchain_utilities/blockchain_stats.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hvardhan/Projects/challenge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.o"
	cd /Users/hvardhan/Projects/challenge/build/src/blockchain_utilities && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.o -c /Users/hvardhan/Projects/challenge/src/blockchain_utilities/blockchain_stats.cpp

src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.i"
	cd /Users/hvardhan/Projects/challenge/build/src/blockchain_utilities && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hvardhan/Projects/challenge/src/blockchain_utilities/blockchain_stats.cpp > CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.i

src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.s"
	cd /Users/hvardhan/Projects/challenge/build/src/blockchain_utilities && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hvardhan/Projects/challenge/src/blockchain_utilities/blockchain_stats.cpp -o CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.s

# Object files for target blockchain_stats
blockchain_stats_OBJECTS = \
"CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.o"

# External object files for target blockchain_stats
blockchain_stats_EXTERNAL_OBJECTS =

bin/monero-blockchain-stats: src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/blockchain_stats.cpp.o
bin/monero-blockchain-stats: src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/build.make
bin/monero-blockchain-stats: src/cryptonote_core/libcryptonote_core.a
bin/monero-blockchain-stats: src/blockchain_db/libblockchain_db.a
bin/monero-blockchain-stats: src/libversion.a
bin/monero-blockchain-stats: contrib/epee/src/libepee.a
bin/monero-blockchain-stats: /usr/local/lib/libboost_filesystem-mt.dylib
bin/monero-blockchain-stats: /usr/local/lib/libboost_system-mt.dylib
bin/monero-blockchain-stats: /usr/local/lib/libboost_thread-mt.dylib
bin/monero-blockchain-stats: external/db_drivers/liblmdb/liblmdb.a
bin/monero-blockchain-stats: src/multisig/libmultisig.a
bin/monero-blockchain-stats: src/ringct/libringct.a
bin/monero-blockchain-stats: src/cryptonote_basic/libcryptonote_basic.a
bin/monero-blockchain-stats: src/checkpoints/libcheckpoints.a
bin/monero-blockchain-stats: src/device/libdevice.a
bin/monero-blockchain-stats: src/ringct/libringct_basic.a
bin/monero-blockchain-stats: src/common/libcommon.a
bin/monero-blockchain-stats: /usr/local/lib/libunbound.dylib
bin/monero-blockchain-stats: /usr/local/lib/libboost_regex-mt.dylib
bin/monero-blockchain-stats: src/crypto/libcncrypto.a
bin/monero-blockchain-stats: contrib/epee/src/libepee.a
bin/monero-blockchain-stats: external/easylogging++/libeasylogging.a
bin/monero-blockchain-stats: /usr/local/lib/libboost_chrono-mt.dylib
bin/monero-blockchain-stats: external/randomx/librandomx.a
bin/monero-blockchain-stats: /usr/local/lib/libsodium.dylib
bin/monero-blockchain-stats: /usr/local/opt/openssl@1.1/lib/libssl.dylib
bin/monero-blockchain-stats: /usr/local/opt/openssl@1.1/lib/libcrypto.dylib
bin/monero-blockchain-stats: src/blocks/libblocks.a
bin/monero-blockchain-stats: src/hardforks/libhardforks.a
bin/monero-blockchain-stats: src/libversion.a
bin/monero-blockchain-stats: /usr/local/lib/libboost_date_time-mt.dylib
bin/monero-blockchain-stats: /usr/local/lib/libboost_program_options-mt.dylib
bin/monero-blockchain-stats: /usr/local/lib/libboost_filesystem-mt.dylib
bin/monero-blockchain-stats: /usr/local/lib/libboost_system-mt.dylib
bin/monero-blockchain-stats: /usr/local/lib/libboost_thread-mt.dylib
bin/monero-blockchain-stats: /usr/local/lib/libboost_serialization-mt.dylib
bin/monero-blockchain-stats: src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hvardhan/Projects/challenge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/monero-blockchain-stats"
	cd /Users/hvardhan/Projects/challenge/build/src/blockchain_utilities && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blockchain_stats.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/build: bin/monero-blockchain-stats

.PHONY : src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/build

src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/clean:
	cd /Users/hvardhan/Projects/challenge/build/src/blockchain_utilities && $(CMAKE_COMMAND) -P CMakeFiles/blockchain_stats.dir/cmake_clean.cmake
.PHONY : src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/clean

src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/depend:
	cd /Users/hvardhan/Projects/challenge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hvardhan/Projects/challenge /Users/hvardhan/Projects/challenge/src/blockchain_utilities /Users/hvardhan/Projects/challenge/build /Users/hvardhan/Projects/challenge/build/src/blockchain_utilities /Users/hvardhan/Projects/challenge/build/src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/blockchain_utilities/CMakeFiles/blockchain_stats.dir/depend

