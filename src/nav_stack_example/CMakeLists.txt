cmake_minimum_required(VERSION 2.8.3)
project(nav_stack_example)

set(${PROJECT_NAME}_CATKIN_DEPS
  costmap_2d
  navfn
  base_local_planner
  roscpp
  tf
)
find_package(catkin REQUIRED COMPONENTS ${${PROJECT_NAME}_CATKIN_DEPS})

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
  include
)

add_executable(local_planner src/local_planner.cpp)
target_link_libraries(local_planner
  ${catkin_LIBRARIES}
)

add_executable(nav_stack_node src/nav_stack_node.cpp)
target_link_libraries(nav_stack_node
  ${catkin_LIBRARIES}
)