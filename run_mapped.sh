#!/bin/bash

sudo killall gzserver
sudo killall gzclient
sudo killall rviz
sudo killall roscore
sudo killall rosmaster

roslaunch mybot_gazebo mybot_world.launch
roslaunch mybot_navigation amcl_demo.launch
roslaunch mybot_description mybot_rviz_amcl.launch

