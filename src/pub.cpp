#include "ros/ros.h"
#include "std_msgs/String.h"
#include <geometry_msgs/Twist.h>

#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);   
  ros::Rate loop_rate(10);

 int count = 0;
  while (ros::ok())
  {
    geometry_msgs::Twist msg;
    msg.linear.x = 10;
    msg.angular.z = 5;    
    chatter_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }
  return 0;
}


