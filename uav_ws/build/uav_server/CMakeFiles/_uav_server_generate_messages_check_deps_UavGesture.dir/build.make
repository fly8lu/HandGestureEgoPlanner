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

# Utility rule file for _uav_server_generate_messages_check_deps_UavGesture.

# Include the progress variables for this target.
include uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/progress.make

uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture:
	cd /home/amov/uav_ws/build/uav_server && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genmsg/cmake/../../../lib/genmsg/genmsg_check_deps.py uav_server /home/amov/uav_ws/src/uav_server/srv/UavGesture.srv 

_uav_server_generate_messages_check_deps_UavGesture: uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture
_uav_server_generate_messages_check_deps_UavGesture: uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/build.make

.PHONY : _uav_server_generate_messages_check_deps_UavGesture

# Rule to build all files generated by this target.
uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/build: _uav_server_generate_messages_check_deps_UavGesture

.PHONY : uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/build

uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/clean:
	cd /home/amov/uav_ws/build/uav_server && $(CMAKE_COMMAND) -P CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/cmake_clean.cmake
.PHONY : uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/clean

uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/depend:
	cd /home/amov/uav_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amov/uav_ws/src /home/amov/uav_ws/src/uav_server /home/amov/uav_ws/build /home/amov/uav_ws/build/uav_server /home/amov/uav_ws/build/uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : uav_server/CMakeFiles/_uav_server_generate_messages_check_deps_UavGesture.dir/depend
