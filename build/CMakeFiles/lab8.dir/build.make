# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dima/Term2/progbase2/labs/lab8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dima/Term2/progbase2/labs/lab8/build

# Include any dependencies generated for this target.
include CMakeFiles/lab8.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab8.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab8.dir/flags.make

CMakeFiles/lab8.dir/main.cpp.o: CMakeFiles/lab8.dir/flags.make
CMakeFiles/lab8.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dima/Term2/progbase2/labs/lab8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/lab8.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lab8.dir/main.cpp.o -c /home/dima/Term2/progbase2/labs/lab8/main.cpp

CMakeFiles/lab8.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab8.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dima/Term2/progbase2/labs/lab8/main.cpp > CMakeFiles/lab8.dir/main.cpp.i

CMakeFiles/lab8.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab8.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dima/Term2/progbase2/labs/lab8/main.cpp -o CMakeFiles/lab8.dir/main.cpp.s

CMakeFiles/lab8.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/lab8.dir/main.cpp.o.requires

CMakeFiles/lab8.dir/main.cpp.o.provides: CMakeFiles/lab8.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab8.dir/build.make CMakeFiles/lab8.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/lab8.dir/main.cpp.o.provides

CMakeFiles/lab8.dir/main.cpp.o.provides.build: CMakeFiles/lab8.dir/main.cpp.o

CMakeFiles/lab8.dir/src/parser.cpp.o: CMakeFiles/lab8.dir/flags.make
CMakeFiles/lab8.dir/src/parser.cpp.o: ../src/parser.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dima/Term2/progbase2/labs/lab8/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/lab8.dir/src/parser.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lab8.dir/src/parser.cpp.o -c /home/dima/Term2/progbase2/labs/lab8/src/parser.cpp

CMakeFiles/lab8.dir/src/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab8.dir/src/parser.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dima/Term2/progbase2/labs/lab8/src/parser.cpp > CMakeFiles/lab8.dir/src/parser.cpp.i

CMakeFiles/lab8.dir/src/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab8.dir/src/parser.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dima/Term2/progbase2/labs/lab8/src/parser.cpp -o CMakeFiles/lab8.dir/src/parser.cpp.s

CMakeFiles/lab8.dir/src/parser.cpp.o.requires:
.PHONY : CMakeFiles/lab8.dir/src/parser.cpp.o.requires

CMakeFiles/lab8.dir/src/parser.cpp.o.provides: CMakeFiles/lab8.dir/src/parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab8.dir/build.make CMakeFiles/lab8.dir/src/parser.cpp.o.provides.build
.PHONY : CMakeFiles/lab8.dir/src/parser.cpp.o.provides

CMakeFiles/lab8.dir/src/parser.cpp.o.provides.build: CMakeFiles/lab8.dir/src/parser.cpp.o

CMakeFiles/lab8.dir/src/request.cpp.o: CMakeFiles/lab8.dir/flags.make
CMakeFiles/lab8.dir/src/request.cpp.o: ../src/request.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dima/Term2/progbase2/labs/lab8/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/lab8.dir/src/request.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lab8.dir/src/request.cpp.o -c /home/dima/Term2/progbase2/labs/lab8/src/request.cpp

CMakeFiles/lab8.dir/src/request.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab8.dir/src/request.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dima/Term2/progbase2/labs/lab8/src/request.cpp > CMakeFiles/lab8.dir/src/request.cpp.i

CMakeFiles/lab8.dir/src/request.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab8.dir/src/request.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dima/Term2/progbase2/labs/lab8/src/request.cpp -o CMakeFiles/lab8.dir/src/request.cpp.s

CMakeFiles/lab8.dir/src/request.cpp.o.requires:
.PHONY : CMakeFiles/lab8.dir/src/request.cpp.o.requires

CMakeFiles/lab8.dir/src/request.cpp.o.provides: CMakeFiles/lab8.dir/src/request.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab8.dir/build.make CMakeFiles/lab8.dir/src/request.cpp.o.provides.build
.PHONY : CMakeFiles/lab8.dir/src/request.cpp.o.provides

CMakeFiles/lab8.dir/src/request.cpp.o.provides.build: CMakeFiles/lab8.dir/src/request.cpp.o

CMakeFiles/lab8.dir/src/response.cpp.o: CMakeFiles/lab8.dir/flags.make
CMakeFiles/lab8.dir/src/response.cpp.o: ../src/response.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dima/Term2/progbase2/labs/lab8/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/lab8.dir/src/response.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lab8.dir/src/response.cpp.o -c /home/dima/Term2/progbase2/labs/lab8/src/response.cpp

CMakeFiles/lab8.dir/src/response.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab8.dir/src/response.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dima/Term2/progbase2/labs/lab8/src/response.cpp > CMakeFiles/lab8.dir/src/response.cpp.i

CMakeFiles/lab8.dir/src/response.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab8.dir/src/response.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dima/Term2/progbase2/labs/lab8/src/response.cpp -o CMakeFiles/lab8.dir/src/response.cpp.s

CMakeFiles/lab8.dir/src/response.cpp.o.requires:
.PHONY : CMakeFiles/lab8.dir/src/response.cpp.o.requires

CMakeFiles/lab8.dir/src/response.cpp.o.provides: CMakeFiles/lab8.dir/src/response.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab8.dir/build.make CMakeFiles/lab8.dir/src/response.cpp.o.provides.build
.PHONY : CMakeFiles/lab8.dir/src/response.cpp.o.provides

CMakeFiles/lab8.dir/src/response.cpp.o.provides.build: CMakeFiles/lab8.dir/src/response.cpp.o

CMakeFiles/lab8.dir/src/writer.cpp.o: CMakeFiles/lab8.dir/flags.make
CMakeFiles/lab8.dir/src/writer.cpp.o: ../src/writer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dima/Term2/progbase2/labs/lab8/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/lab8.dir/src/writer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lab8.dir/src/writer.cpp.o -c /home/dima/Term2/progbase2/labs/lab8/src/writer.cpp

CMakeFiles/lab8.dir/src/writer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab8.dir/src/writer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dima/Term2/progbase2/labs/lab8/src/writer.cpp > CMakeFiles/lab8.dir/src/writer.cpp.i

CMakeFiles/lab8.dir/src/writer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab8.dir/src/writer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dima/Term2/progbase2/labs/lab8/src/writer.cpp -o CMakeFiles/lab8.dir/src/writer.cpp.s

CMakeFiles/lab8.dir/src/writer.cpp.o.requires:
.PHONY : CMakeFiles/lab8.dir/src/writer.cpp.o.requires

CMakeFiles/lab8.dir/src/writer.cpp.o.provides: CMakeFiles/lab8.dir/src/writer.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab8.dir/build.make CMakeFiles/lab8.dir/src/writer.cpp.o.provides.build
.PHONY : CMakeFiles/lab8.dir/src/writer.cpp.o.provides

CMakeFiles/lab8.dir/src/writer.cpp.o.provides.build: CMakeFiles/lab8.dir/src/writer.cpp.o

# Object files for target lab8
lab8_OBJECTS = \
"CMakeFiles/lab8.dir/main.cpp.o" \
"CMakeFiles/lab8.dir/src/parser.cpp.o" \
"CMakeFiles/lab8.dir/src/request.cpp.o" \
"CMakeFiles/lab8.dir/src/response.cpp.o" \
"CMakeFiles/lab8.dir/src/writer.cpp.o"

# External object files for target lab8
lab8_EXTERNAL_OBJECTS =

lab8: CMakeFiles/lab8.dir/main.cpp.o
lab8: CMakeFiles/lab8.dir/src/parser.cpp.o
lab8: CMakeFiles/lab8.dir/src/request.cpp.o
lab8: CMakeFiles/lab8.dir/src/response.cpp.o
lab8: CMakeFiles/lab8.dir/src/writer.cpp.o
lab8: CMakeFiles/lab8.dir/build.make
lab8: CMakeFiles/lab8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable lab8"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab8.dir/build: lab8
.PHONY : CMakeFiles/lab8.dir/build

CMakeFiles/lab8.dir/requires: CMakeFiles/lab8.dir/main.cpp.o.requires
CMakeFiles/lab8.dir/requires: CMakeFiles/lab8.dir/src/parser.cpp.o.requires
CMakeFiles/lab8.dir/requires: CMakeFiles/lab8.dir/src/request.cpp.o.requires
CMakeFiles/lab8.dir/requires: CMakeFiles/lab8.dir/src/response.cpp.o.requires
CMakeFiles/lab8.dir/requires: CMakeFiles/lab8.dir/src/writer.cpp.o.requires
.PHONY : CMakeFiles/lab8.dir/requires

CMakeFiles/lab8.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab8.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab8.dir/clean

CMakeFiles/lab8.dir/depend:
	cd /home/dima/Term2/progbase2/labs/lab8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dima/Term2/progbase2/labs/lab8 /home/dima/Term2/progbase2/labs/lab8 /home/dima/Term2/progbase2/labs/lab8/build /home/dima/Term2/progbase2/labs/lab8/build /home/dima/Term2/progbase2/labs/lab8/build/CMakeFiles/lab8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab8.dir/depend
