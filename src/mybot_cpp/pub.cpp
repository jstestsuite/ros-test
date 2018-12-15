#include "ros/ros.h"
#include "std_msgs/String.h"
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/LaserScan.h>

#include <sstream>

void laserCallback(const sensor_msgs::LaserScan::ConstPtr& msg)
{
  ROS_INFO("I heard: [%f]", msg->scan_time);
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);   
  ros::Rate loop_rate(10);
ros::init(argc, argv, "listener");

  


  
  ros::Subscriber sub = n.subscribe("mybot/laser/scan", 1000, laserCallback);


 int count = 0;
  while (ros::ok())
  {
    geometry_msgs::Twist msg;
    msg.linear.x = 1;
    msg.angular.z = 5;    
    chatter_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    ++count;


  }

  

 
  return 0;
}


