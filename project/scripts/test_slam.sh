#!/bin/sh

export TURTLEBOT_GAZEBO_WORLD_FILE=/home/workspace/catkin_ws/src/project/map/worldfile


xterm  -e  " cd /home/workspace/catkin_ws; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch  " &
sleep 5
xterm  -e  " cd /home/workspace/catkin_ws; source devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch" & 
sleep 5
xterm  -e  " cd /home/workspace/catkin_ws; source devel/setup.bash; rosrun gmapping slam_gmapping" &
sleep 5
xterm  -e  " rosrun rviz rviz" 