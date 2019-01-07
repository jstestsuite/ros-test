#include <ros/ros.h>
#include <iostream>
#include <base_local_planner/trajectory_planner_ros.h>
#include <navfn/navfn_ros.h>
#include <tf/transform_listener.h>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Odometry.h>
using namespace std;
base_local_planner::TrajectoryPlannerROS* local_planner;
navfn::NavfnROS* global_planner;
costmap_2d::Costmap2DROS* local_costmap;
costmap_2d::Costmap2DROS* global_costmap;
tf2_ros::Buffer listener;
ros::Publisher pub_twist;
ros::Publisher pub_goal;


//tf2_ros::Buffer  listener;
ros::Duration temp(5.0);

geometry_msgs::PoseStamped current_goal;
geometry_msgs::PoseStamped current_goal2;
tf::Stamped<tf::Pose> pose_stamped;
bool active = true;
bool valid_goal = false;

void recvGoal(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
  valid_goal = true;
  current_goal = *msg;
current_goal2 = current_goal;
}

void recvOdom(const nav_msgs::Odometry::ConstPtr& msg)
{
  pose_stamped.frame_id_ = msg->header.frame_id;
  pose_stamped.stamp_ = msg->header.stamp;

  tf::Vector3 vehicle_position(msg->pose.pose.position.x, msg->pose.pose.position.y, msg->pose.pose.position.z);
  pose_stamped.setOrigin(vehicle_position);

  tf::Quaternion q;
  tf::quaternionMsgToTF(msg->pose.pose.orientation, q);
  pose_stamped.setRotation(q);
}

void timerCallback(const ros::TimerEvent& event)
{

  if (active)
  {
	ROS_INFO_STREAM("print here2 /n");
    geometry_msgs::Twist twist_msg;
    //local_planner->computeVelocityCommands(twist_msg);
pub_twist.publish(twist_msg);
   
  }
}

void goalCallback(const ros::TimerEvent& event)
{

geometry_msgs::Twist twist_msg;
  if (valid_goal)
  {
ROS_INFO_STREAM("print her3333e /n");
ROS_INFO_STREAM("print her33333333e /n");

    //listener.lookupTransform("map",  pose_stamped.frame_id_, ros::Time(0));
    
    geometry_msgs::PoseStamped robot_pose;
    robot_pose.header.frame_id = "map";
    robot_pose.header.stamp = pose_stamped.stamp_;
   //tf::quaternionTFToMsg(pose_stamped.getRotation(), robot_pose.pose.orientation);
    robot_pose.pose.position.x = pose_stamped.getOrigin().x();
    robot_pose.pose.position.y = pose_stamped.getOrigin().y();
    robot_pose.pose.position.z = pose_stamped.getOrigin().z();
 
    std::vector<geometry_msgs::PoseStamped> plan;
   // global_planner->makePlan(robot_pose, current_goal, plan);
    //local_planner->setPlan(plan);
  }
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "local_planner");
  ros::NodeHandle n;
  ros::NodeHandle pn("~");


  
  listener.setUsingDedicatedThread(true);

  //local_costmap = new costmap_2d::Costmap2DROS("local_costmap", listener);


//  global_costmap = new costmap_2d::Costmap2DROS("global_costmap", *listener);
 // local_planner = new base_local_planner::TrajectoryPlannerROS("local_planner", listener, local_costmap);
 // global_planner = new navfn::NavfnROS("global_planner", global_costmap);

  ros::Subscriber sub_goal = n.subscribe("move_base_simple/goal", 1, recvGoal);
  ros::Subscriber sub_odom = n.subscribe("odom", 1, recvOdom);
  pub_twist = n.advertise<geometry_msgs::Twist>("roundbot/cmd_vel", 1);
  pub_goal = n.advertise<geometry_msgs::PoseStamped>("global_planner/goal", 1);

  double freq;
  pn.param("freq", freq, 20.0);
  ros::Timer control_timer = n.createTimer(ros::Duration(1.0 / freq), timerCallback);

  ros::Timer goal_timer = n.createTimer(ros::Duration(1.0), goalCallback);
ROS_INFO_STREAM("print here /n");
ROS_INFO_STREAM("print here /n");
ROS_INFO_STREAM("print here /n");
  ros::spin();
}
