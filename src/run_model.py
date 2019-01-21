
#!/usr/bin/env python
import rospy
import tensorflow as tf
from nav_msgs.msg import Odometry
from move_base_msgs.msg import *
from geometry_msgs.msg import Twist
import math
from tensorflow import keras
import numpy as np

goal = np.empty([1,1,2])
ML_in = np.empty([1,1,5])
predictions = np.empty([2])

vel_msg = Twist()

def create_model():
   model = keras.Sequential([
      keras.layers.Flatten(input_shape=(1, 5)),
      keras.layers.Dense(64, activation=tf.nn.tanh),
      keras.layers.Dense(32, activation=tf.nn.tanh),
      keras.layers.Dense(16, activation=tf.nn.tanh),
      keras.layers.Dense(2, activation=tf.nn.tanh)
   ])


  
   model.compile(optimizer='adam', loss=tf.keras.losses.sparse_categorical_crossentropy, metrics=['accuracy'])
  
   return model


def goal_got(msg):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", msg.goal.target_pose.pose)
    goal[0][0][0] = msg.goal.target_pose.pose.position.x
    goal[0][0][1] = msg.goal.target_pose.pose.position.y
    #rospy.loginfo(rospy.get_caller_id() + "I heard %s", goal[0][0][0])


def odom_got(msg):
    #rospy.loginfo(rospy.get_caller_id() + "I heard %s", msg.pose.pose)
    #should do this as an NP array.
    x_loc = msg.pose.pose.position.x
    y_loc = msg.pose.pose.position.y
    #ML_in[0][0][0]=math.sqrt((goal[0][0][0]-x_loc)**2+(goal[0][0][1]-y_loc)**2)
    #ML_in[0][0][1] = math.atan2((goal[0][0][1]-y_loc),(goal[0][0][0]-x_loc))
    ML_in[0][0][2]=msg.pose.pose.orientation.z
    qz = msg.pose.pose.orientation.z
    qw = msg.pose.pose.orientation.w
    qx = msg.pose.pose.orientation.x
    qy = msg.pose.pose.orientation.y

    #rospy.loginfo(rospy.get_caller_id() + "I heard %s", ML_in)
    siny_cosp = +2.0 * (qw * qz + qx * qy);
    cosy_cosp = +1.0 - 2.0 * (qy * qy + qz * qz);  
    yaw = math.atan2(siny_cosp, cosy_cosp);
    rospy.loginfo("Distance %s", yaw)
    ML_in[0][0][0]=math.sqrt((5-x_loc)**2+(2-y_loc)**2)
    ML_in[0][0][1] = math.atan2((2-y_loc),(5-x_loc))
    #rospy.loginfo("Distance %s", (5-x_loc)**2+(2-y_loc)**2)
    #rospy.loginfo(rospy.get_caller_id() + "I heard %s", ML_in)



#####################################################
#####################################################
############################################
def prep_ml():
    predictions = model.predict(ML_in)
    rospy.loginfo("I heard %s", predictions)
  

###########need to do basic math then call model with it, then send cmd##########################
################                                                         ########################
########################################
########################################
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.

    # subscribe to odom
    #rospy.init_node('odometry', anonymous=True) #make node 
    rospy.Subscriber('odom',Odometry,odom_got)

    # subscribe to goal
    #rospy.init_node('goal', anonymous=True) #make node 
    rospy.Subscriber('move_base/goal',MoveBaseActionGoal,goal_got)
    # spin() simply keeps python from exiting until this node is stopped
    #rospy.spin()

def talker():
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
    #vel_msg = Twist()
    #prep_ml()
 
    ML_in[0][0][3]=vel_msg.linear.x
    ML_in[0][0][4]= vel_msg.angular.z
    predictions = model.predict(ML_in)
    vel_msg.linear.x = predictions[0][0]
    vel_msg.angular.z =predictions[0][1]
    #rospy.loginfo("Sent %s", predictions)
    #rospy.loginfo("Distance %s", ML_in)
    #hello_str = "hello world %s" % rospy.get_time()
    #rospy.loginfo(rospy.get_caller_id() + "I heard %s")
        #rospy.loginfo(hello_str)
    pub.publish(vel_msg)

if __name__ == '__main__':
    rospy.init_node('talker', anonymous=True)    
    rate = rospy.Rate(1) # 10hz
    model = create_model()
    model.load_weights('./checkpoints/my_checkpoint')    
    while not rospy.is_shutdown():    
	talker()    
   	listener()
        rate.sleep()




