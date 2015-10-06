cmake_minimum_required(VERSION 2.8.3)
project(hw1_jose)


find_package(catkin REQUIRED COMPONENTS
  rospy
  turtlesim
  geometry_msgs
)

catkin_package()


include_directories(
  ${catkin_INCLUDE_DIRS}
)


