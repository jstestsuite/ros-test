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
CMAKE_SOURCE_DIR = /home/justin/ros_test/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/justin/ros_test/build

# Include any dependencies generated for this target.
include homework4/CMakeFiles/homework4.dir/depend.make

# Include the progress variables for this target.
include homework4/CMakeFiles/homework4.dir/progress.make

# Include the compile flags for this target's objects.
include homework4/CMakeFiles/homework4.dir/flags.make

homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o: homework4/CMakeFiles/homework4.dir/flags.make
homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o: /home/justin/ros_test/src/homework4/src/homework4.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justin/ros_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o"
	cd /home/justin/ros_test/build/homework4 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/homework4.dir/src/homework4.cpp.o -c /home/justin/ros_test/src/homework4/src/homework4.cpp

homework4/CMakeFiles/homework4.dir/src/homework4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/homework4.dir/src/homework4.cpp.i"
	cd /home/justin/ros_test/build/homework4 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justin/ros_test/src/homework4/src/homework4.cpp > CMakeFiles/homework4.dir/src/homework4.cpp.i

homework4/CMakeFiles/homework4.dir/src/homework4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/homework4.dir/src/homework4.cpp.s"
	cd /home/justin/ros_test/build/homework4 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justin/ros_test/src/homework4/src/homework4.cpp -o CMakeFiles/homework4.dir/src/homework4.cpp.s

homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o.requires:

.PHONY : homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o.requires

homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o.provides: homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o.requires
	$(MAKE) -f homework4/CMakeFiles/homework4.dir/build.make homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o.provides.build
.PHONY : homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o.provides

homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o.provides.build: homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o


# Object files for target homework4
homework4_OBJECTS = \
"CMakeFiles/homework4.dir/src/homework4.cpp.o"

# External object files for target homework4
homework4_EXTERNAL_OBJECTS =

/home/justin/ros_test/devel/lib/homework4/homework4: homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o
/home/justin/ros_test/devel/lib/homework4/homework4: homework4/CMakeFiles/homework4.dir/build.make
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libtf.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libtf2_ros.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libactionlib.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libmessage_filters.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libroscpp.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libtf2.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/librosconsole.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/librostime.so
/home/justin/ros_test/devel/lib/homework4/homework4: /opt/ros/melodic/lib/libcpp_common.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/justin/ros_test/devel/lib/homework4/homework4: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/justin/ros_test/devel/lib/homework4/homework4: homework4/CMakeFiles/homework4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/justin/ros_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/justin/ros_test/devel/lib/homework4/homework4"
	cd /home/justin/ros_test/build/homework4 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/homework4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
homework4/CMakeFiles/homework4.dir/build: /home/justin/ros_test/devel/lib/homework4/homework4

.PHONY : homework4/CMakeFiles/homework4.dir/build

homework4/CMakeFiles/homework4.dir/requires: homework4/CMakeFiles/homework4.dir/src/homework4.cpp.o.requires

.PHONY : homework4/CMakeFiles/homework4.dir/requires

homework4/CMakeFiles/homework4.dir/clean:
	cd /home/justin/ros_test/build/homework4 && $(CMAKE_COMMAND) -P CMakeFiles/homework4.dir/cmake_clean.cmake
.PHONY : homework4/CMakeFiles/homework4.dir/clean

homework4/CMakeFiles/homework4.dir/depend:
	cd /home/justin/ros_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/justin/ros_test/src /home/justin/ros_test/src/homework4 /home/justin/ros_test/build /home/justin/ros_test/build/homework4 /home/justin/ros_test/build/homework4/CMakeFiles/homework4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : homework4/CMakeFiles/homework4.dir/depend

