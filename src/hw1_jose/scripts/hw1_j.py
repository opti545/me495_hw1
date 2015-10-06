#!/usr/bin/env python

import rospy
from math import *
from geometry_msgs.msg import Twist
from turtlesim.srv import TeleportAbsolute

def hw1_main():
	#My node
	rospy.init_node('jose_hw1_node')
	#Set up to publish to cmd_vel
	pubt = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=1000)
	#Get the service
	teleport_t = rospy.ServiceProxy('turtle1/teleport_absolute', TeleportAbsolute)
	#60 Hz frequency
	rate = rospy.Rate(60)
	#Getting the parameter
	tg = rospy.get_param('/jose_hw1_node/t_seconds', 10)
	rospy.loginfo('Parameter for T is : %d', tg)
	#Set up the initial position
	teleport_t(5.444,5.444,90)
	#Get a Twist object
	twist = Twist()
	
	#Get current time
	time_start = rospy.get_time()

	while not rospy.is_shutdown():
		tc = rospy.get_time()
		#Get time that has passed
		tc = tc - time_start
		#First Derivative
		x_dot = (12*pi*cos((4*pi*tc)/tg))/tg
		y_dot = (6*pi*cos((2*pi*tc)/tg))/tg
		#Second Derivative
		x_dot_dot = -(48*pi*pi*sin((4*pi*tc)/tg))/(tg**2)
		y_dot_dot = -(12*pi*pi*sin((2*pi*tc)/tg))/(tg**2)

		#For Translational and Rotational Velocity
		#Calculation
		#Only two of the cmd_vel are used : Linear.x and Angular.z
		twist.linear.x = sqrt(x_dot**2 + y_dot**2) #magnitude of velocity
		twist.angular.z = ((y_dot_dot*x_dot-x_dot_dot*y_dot)/((x_dot**2)+(y_dot**2)))

		#Publish the message
		pubt.publish(twist)
		rate.sleep()

if __name__ == '__main__':
		hw1_main()
