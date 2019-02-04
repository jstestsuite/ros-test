# Install script for directory: /home/justin/ros_test/src/turtlebot3_ddpg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/justin/ros_test/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/turtlebot3_ddpg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_ddpg/cmake" TYPE FILE FILES
    "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/turtlebot3_ddpgConfig.cmake"
    "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/turtlebot3_ddpgConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_ddpg" TYPE FILE FILES "/home/justin/ros_test/src/turtlebot3_ddpg/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/turtlebot3_ddpg_stage_1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/ddpg_classes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/result_graph")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/action_graph")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/moving_obstacle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/combination_obstacle_1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/combination_obstacle_2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/environment_stage_1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/environment_stage_2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/environment_stage_3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/environment_stage_4.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_ddpg" TYPE PROGRAM FILES "/home/justin/ros_test/build/turtlebot3_ddpg/catkin_generated/installspace/respawnGoal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_ddpg" TYPE DIRECTORY FILES
    "/home/justin/ros_test/src/turtlebot3_ddpg/launch"
    "/home/justin/ros_test/src/turtlebot3_ddpg/save_model"
    )
endif()

