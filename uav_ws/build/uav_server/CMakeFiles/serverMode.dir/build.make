# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amov/uav_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amov/uav_ws/build

# Include any dependencies generated for this target.
include uav_server/CMakeFiles/serverMode.dir/depend.make

# Include the progress variables for this target.
include uav_server/CMakeFiles/serverMode.dir/progress.make

# Include the compile flags for this target's objects.
include uav_server/CMakeFiles/serverMode.dir/flags.make

uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o: uav_server/CMakeFiles/serverMode.dir/flags.make
uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o: /home/amov/uav_ws/src/uav_server/src/serverMode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amov/uav_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o"
	cd /home/amov/uav_ws/build/uav_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serverMode.dir/src/serverMode.cpp.o -c /home/amov/uav_ws/src/uav_server/src/serverMode.cpp

uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serverMode.dir/src/serverMode.cpp.i"
	cd /home/amov/uav_ws/build/uav_server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amov/uav_ws/src/uav_server/src/serverMode.cpp > CMakeFiles/serverMode.dir/src/serverMode.cpp.i

uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serverMode.dir/src/serverMode.cpp.s"
	cd /home/amov/uav_ws/build/uav_server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amov/uav_ws/src/uav_server/src/serverMode.cpp -o CMakeFiles/serverMode.dir/src/serverMode.cpp.s

uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o.requires:

.PHONY : uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o.requires

uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o.provides: uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o.requires
	$(MAKE) -f uav_server/CMakeFiles/serverMode.dir/build.make uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o.provides.build
.PHONY : uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o.provides

uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o.provides.build: uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o


# Object files for target serverMode
serverMode_OBJECTS = \
"CMakeFiles/serverMode.dir/src/serverMode.cpp.o"

# External object files for target serverMode
serverMode_EXTERNAL_OBJECTS =

/home/amov/uav_ws/devel/lib/uav_server/serverMode: uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o
/home/amov/uav_ws/devel/lib/uav_server/serverMode: uav_server/CMakeFiles/serverMode.dir/build.make
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /opt/ros/melodic/lib/libroscpp.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /opt/ros/melodic/lib/librosconsole.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /opt/ros/melodic/lib/librostime.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /opt/ros/melodic/lib/libcpp_common.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/amov/uav_ws/devel/lib/uav_server/serverMode: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/amov/uav_ws/devel/lib/uav_server/serverMode: uav_server/CMakeFiles/serverMode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amov/uav_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/amov/uav_ws/devel/lib/uav_server/serverMode"
	cd /home/amov/uav_ws/build/uav_server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serverMode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
uav_server/CMakeFiles/serverMode.dir/build: /home/amov/uav_ws/devel/lib/uav_server/serverMode

.PHONY : uav_server/CMakeFiles/serverMode.dir/build

uav_server/CMakeFiles/serverMode.dir/requires: uav_server/CMakeFiles/serverMode.dir/src/serverMode.cpp.o.requires

.PHONY : uav_server/CMakeFiles/serverMode.dir/requires

uav_server/CMakeFiles/serverMode.dir/clean:
	cd /home/amov/uav_ws/build/uav_server && $(CMAKE_COMMAND) -P CMakeFiles/serverMode.dir/cmake_clean.cmake
.PHONY : uav_server/CMakeFiles/serverMode.dir/clean

uav_server/CMakeFiles/serverMode.dir/depend:
	cd /home/amov/uav_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amov/uav_ws/src /home/amov/uav_ws/src/uav_server /home/amov/uav_ws/build /home/amov/uav_ws/build/uav_server /home/amov/uav_ws/build/uav_server/CMakeFiles/serverMode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : uav_server/CMakeFiles/serverMode.dir/depend

