cmake_minimum_required(VERSION 2.8.3)
project(mantis_model)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  tf
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(joint_state_pub src/joint_state_pub.cpp)
target_link_libraries(joint_state_pub
  ${catkin_LIBRARIES}
)
