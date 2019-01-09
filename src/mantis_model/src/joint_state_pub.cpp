#include <ros/ros.h>
#include <sensor_msgs/JointState.h>

sensor_msgs::JointState joint_state;
ros::Publisher pub_joints;

void timerCallback(const ros::TimerEvent& event)
{
  double constant_rate = 2.0;

  joint_state.header.stamp = event.current_real;
  joint_state.position[0] += 0.02 * constant_rate;
  joint_state.position[1] += 0.02 * constant_rate;

  joint_state.velocity[0] = constant_rate;
  joint_state.velocity[1] = constant_rate;

  joint_state.effort[0] = 5;
  joint_state.effort[1] = 5;
  pub_joints.publish(joint_state);
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "joint_state_pub");
  ros::NodeHandle n;

  joint_state.header.frame_id = "base_footprint";
  joint_state.name.resize(2);
  joint_state.position.resize(2, 0);
  joint_state.velocity.resize(2, 0);
  joint_state.effort.resize(2, 0);

  joint_state.name[0] = "left_wheel_joint";
  joint_state.name[1] = "right_wheel_joint";

  pub_joints = n.advertise<sensor_msgs::JointState>("/joint_states", 1);

  ros::Timer timer = n.createTimer(ros::Duration(0.02), timerCallback);

  ros::spin();
}
