# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/pengwei08/project/CPP_NOTE/Chapter2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/pengwei08/project/CPP_NOTE/Chapter2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Chapter2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Chapter2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Chapter2.dir/flags.make

CMakeFiles/Chapter2.dir/main.cpp.o: CMakeFiles/Chapter2.dir/flags.make
CMakeFiles/Chapter2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/pengwei08/project/CPP_NOTE/Chapter2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Chapter2.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chapter2.dir/main.cpp.o -c /Users/pengwei08/project/CPP_NOTE/Chapter2/main.cpp

CMakeFiles/Chapter2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chapter2.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/pengwei08/project/CPP_NOTE/Chapter2/main.cpp > CMakeFiles/Chapter2.dir/main.cpp.i

CMakeFiles/Chapter2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chapter2.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/pengwei08/project/CPP_NOTE/Chapter2/main.cpp -o CMakeFiles/Chapter2.dir/main.cpp.s

# Object files for target Chapter2
Chapter2_OBJECTS = \
"CMakeFiles/Chapter2.dir/main.cpp.o"

# External object files for target Chapter2
Chapter2_EXTERNAL_OBJECTS =

Chapter2: CMakeFiles/Chapter2.dir/main.cpp.o
Chapter2: CMakeFiles/Chapter2.dir/build.make
Chapter2: CMakeFiles/Chapter2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/pengwei08/project/CPP_NOTE/Chapter2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Chapter2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Chapter2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Chapter2.dir/build: Chapter2

.PHONY : CMakeFiles/Chapter2.dir/build

CMakeFiles/Chapter2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Chapter2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Chapter2.dir/clean

CMakeFiles/Chapter2.dir/depend:
	cd /Users/pengwei08/project/CPP_NOTE/Chapter2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/pengwei08/project/CPP_NOTE/Chapter2 /Users/pengwei08/project/CPP_NOTE/Chapter2 /Users/pengwei08/project/CPP_NOTE/Chapter2/cmake-build-debug /Users/pengwei08/project/CPP_NOTE/Chapter2/cmake-build-debug /Users/pengwei08/project/CPP_NOTE/Chapter2/cmake-build-debug/CMakeFiles/Chapter2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Chapter2.dir/depend

