#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <stdlib.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
int yran;
int xran;
move_base_msgs::MoveBaseGoal goal;
int count = 4;
void randomNum ()
{
srand (time(NULL));
xran = rand() % 11;
yran = rand() % 11;

ROS_INFO("xran %d", xran);

xran = xran - 5;
yran = yran - 4;
ROS_INFO("xran %d", xran);
  goal.target_pose.pose.position.x = xran;
goal.target_pose.pose.position.y = yran;
  goal.target_pose.pose.orientation.w = 1.0;

}

int main(int argc, char** argv){

srand (time(NULL));
  ros::init(argc, argv, "simple_navigation_goals");

  //tell the action client that we want to spin a thread by default
  MoveBaseClient ac("move_base", true);

  //wait for the action server to come up
  

//while(!ac.waitForServer(ros::Duration(5.0))){
    //ROS_INFO("Waiting for the move_base action server to come up");
  //}

  

  //we'll send a goal to the robot to move 1 meter forward
  goal.target_pose.header.frame_id = "odom";
  goal.target_pose.header.stamp = ros::Time::now();

//create random between -4.3 ->6 for y, and -5->5 for x
xran = rand() % 11;
yran = rand() % 11;

ROS_INFO("xran %d", xran);

xran = xran - 5;
yran = yran - 4;
ROS_INFO("xran %d", xran);
  goal.target_pose.pose.position.x = xran;
goal.target_pose.pose.position.y = yran;
  goal.target_pose.pose.orientation.w = 1.0;

  ROS_INFO("Sending goal");
  ac.sendGoal(goal);
  ROS_INFO("goal sent!");
while (count >= 0)
{
  ac.waitForResult();

  if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    {
ROS_INFO("Hooray, the base moved 1 meter forward");
	randomNum();
  ROS_INFO("Sending goal");
  ac.sendGoal(goal);
}
  else
    ROS_INFO("The base failed to move forward 1 meter for some reason");

count --;
}

ROS_INFO("/n Finished Sending Goals");
  return 0;
}
