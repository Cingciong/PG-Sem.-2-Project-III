# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/build

# Include any dependencies generated for this target.
include CMakeFiles/pyBindModule.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pyBindModule.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pyBindModule.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pyBindModule.dir/flags.make

CMakeFiles/pyBindModule.dir/main.cpp.o: CMakeFiles/pyBindModule.dir/flags.make
CMakeFiles/pyBindModule.dir/main.cpp.o: ../main.cpp
CMakeFiles/pyBindModule.dir/main.cpp.o: CMakeFiles/pyBindModule.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pyBindModule.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pyBindModule.dir/main.cpp.o -MF CMakeFiles/pyBindModule.dir/main.cpp.o.d -o CMakeFiles/pyBindModule.dir/main.cpp.o -c /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/main.cpp

CMakeFiles/pyBindModule.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pyBindModule.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/main.cpp > CMakeFiles/pyBindModule.dir/main.cpp.i

CMakeFiles/pyBindModule.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pyBindModule.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/main.cpp -o CMakeFiles/pyBindModule.dir/main.cpp.s

# Object files for target pyBindModule
pyBindModule_OBJECTS = \
"CMakeFiles/pyBindModule.dir/main.cpp.o"

# External object files for target pyBindModule
pyBindModule_EXTERNAL_OBJECTS =

pyBindModule.cpython-38-x86_64-linux-gnu.so: CMakeFiles/pyBindModule.dir/main.cpp.o
pyBindModule.cpython-38-x86_64-linux-gnu.so: CMakeFiles/pyBindModule.dir/build.make
pyBindModule.cpython-38-x86_64-linux-gnu.so: matplotplusplus/source/matplot/libmatplot.a
pyBindModule.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libjpeg.so
pyBindModule.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libtiff.so
pyBindModule.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libz.so
pyBindModule.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libpng.so
pyBindModule.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libz.so
pyBindModule.cpython-38-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libpng.so
pyBindModule.cpython-38-x86_64-linux-gnu.so: matplotplusplus/source/3rd_party/libnodesoup.a
pyBindModule.cpython-38-x86_64-linux-gnu.so: CMakeFiles/pyBindModule.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module pyBindModule.cpython-38-x86_64-linux-gnu.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pyBindModule.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/strip /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/build/pyBindModule.cpython-38-x86_64-linux-gnu.so

# Rule to build all files generated by this target.
CMakeFiles/pyBindModule.dir/build: pyBindModule.cpython-38-x86_64-linux-gnu.so
.PHONY : CMakeFiles/pyBindModule.dir/build

CMakeFiles/pyBindModule.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pyBindModule.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pyBindModule.dir/clean

CMakeFiles/pyBindModule.dir/depend:
	cd /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/build /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/build /mnt/c/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/build/CMakeFiles/pyBindModule.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pyBindModule.dir/depend
