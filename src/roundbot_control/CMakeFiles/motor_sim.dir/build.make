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
CMAKE_SOURCE_DIR = /home/jman/ros/src/ugv_course/roundbot_control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jman/ros/src/ugv_course/roundbot_control

# Include any dependencies generated for this target.
include CMakeFiles/motor_sim.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/motor_sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/motor_sim.dir/flags.make

CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o: CMakeFiles/motor_sim.dir/flags.make
CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o: src/MotorSim.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jman/ros/src/ugv_course/roundbot_control/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o -c /home/jman/ros/src/ugv_course/roundbot_control/src/MotorSim.cpp

CMakeFiles/motor_sim.dir/src/MotorSim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/motor_sim.dir/src/MotorSim.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jman/ros/src/ugv_course/roundbot_control/src/MotorSim.cpp > CMakeFiles/motor_sim.dir/src/MotorSim.cpp.i

CMakeFiles/motor_sim.dir/src/MotorSim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/motor_sim.dir/src/MotorSim.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jman/ros/src/ugv_course/roundbot_control/src/MotorSim.cpp -o CMakeFiles/motor_sim.dir/src/MotorSim.cpp.s

CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o.requires:
.PHONY : CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o.requires

CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o.provides: CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o.requires
	$(MAKE) -f CMakeFiles/motor_sim.dir/build.make CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o.provides.build
.PHONY : CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o.provides

CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o.provides.build: CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o

# Object files for target motor_sim
motor_sim_OBJECTS = \
"CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o"

# External object files for target motor_sim
motor_sim_EXTERNAL_OBJECTS =

devel/lib/libmotor_sim.so: CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o
devel/lib/libmotor_sim.so: CMakeFiles/motor_sim.dir/build.make
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/libroscpp.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/libclass_loader.so
devel/lib/libmotor_sim.so: /usr/lib/libPocoFoundation.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libdl.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/librosconsole.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/libmotor_sim.so: /usr/lib/liblog4cxx.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/librostime.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/libmotor_sim.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/libmotor_sim.so: /opt/ros/indigo/lib/libroslib.so
devel/lib/libmotor_sim.so: CMakeFiles/motor_sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library devel/lib/libmotor_sim.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/motor_sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/motor_sim.dir/build: devel/lib/libmotor_sim.so
.PHONY : CMakeFiles/motor_sim.dir/build

CMakeFiles/motor_sim.dir/requires: CMakeFiles/motor_sim.dir/src/MotorSim.cpp.o.requires
.PHONY : CMakeFiles/motor_sim.dir/requires

CMakeFiles/motor_sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/motor_sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/motor_sim.dir/clean

CMakeFiles/motor_sim.dir/depend:
	cd /home/jman/ros/src/ugv_course/roundbot_control && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jman/ros/src/ugv_course/roundbot_control /home/jman/ros/src/ugv_course/roundbot_control /home/jman/ros/src/ugv_course/roundbot_control /home/jman/ros/src/ugv_course/roundbot_control /home/jman/ros/src/ugv_course/roundbot_control/CMakeFiles/motor_sim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/motor_sim.dir/depend

