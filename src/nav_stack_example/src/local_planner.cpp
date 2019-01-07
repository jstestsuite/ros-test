#include <ros/ros.h>

#include <base_local_planner/trajectory_planner_ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>

base_local_planner::TrajectoryPlannerROS* local_planner;
costmap_2d::Costmap2DROS* local_costmap;
tf2_ros::Buffer* listener;
ros::Publisher pub_twist;
ros::Publisher pub_goal;


ros::Duration temp(5.0);


geometry_msgs::PoseStamped current_goal;
bool active = false;
bool valid_goal = false;

void recvPath(const nav_msgs::Path::ConstPtr& msg)
{
	if (msg->poses.size() > 0){
		active = true;
	}else{
		active = false;
	}

	local_planner->setPlan(msg->poses);
}

void recvGoal(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
	valid_goal = true;
	current_goal = *msg;
}

void timerCallback(const ros::TimerEvent& event)
{
	if (active){
		geometry_msgs::Twist twist_msg;
		local_planner->computeVelocityCommands(twist_msg);
		pub_twist.publish(twist_msg);
	}
}

void goalCallback(const ros::TimerEvent& event)
{
	if (valid_goal){
		pub_goal.publish(current_goal);
	}
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "local_planner");
	ros::NodeHandle n;
	ros::NodeHandle pn("~");

	listener = new tf2_ros::Buffer;
	local_costmap = new costmap_2d::Costmap2DROS("local_costmap", *listener);
	local_planner = new base_local_planner::TrajectoryPlannerROS("local_planner", listener, local_costmap);

        ros::Subscriber sub_path = n.subscribe("global_planner/navfn_planner/plan", 1, recvPath);
        ros::Subscriber sub_goal = n.subscribe("move_base_simple/goal", 1, recvGoal);
        pub_twist = n.advertise<geometry_msgs::Twist>("roundbot/cmd_vel", 1);
        pub_goal = n.advertise<geometry_msgs::PoseStamped>("global_planner/goal", 1);

	double freq;
	pn.param("freq", freq, 20.0);
	ros::Timer control_timer = n.createTimer(ros::Duration(1.0 / freq), timerCallback);

	ros::Timer goal_timer = n.createTimer(ros::Duration(1.0), goalCallback);

	ros::spin();
}
