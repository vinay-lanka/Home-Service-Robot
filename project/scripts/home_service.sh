#!/bin/sh

export TURTLEBOT_GAZEBO_WORLD_FILE=/home/workspace/catkin_ws/src/project/map/worldfile
export TURTLEBOT_GAZEBO_MAP_FILE=/home/workspace/catkin_ws/src/project/map/map.yaml

xterm -e " cd /home/workspace/catkin_ws; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e " cd /home/workspace/catkin_ws; source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 5
xterm -e " cd /home/workspace/catkin_ws; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm -e " cd /home/workspace/catkin_ws; source devel/setup.bash; rosrun add_markers add_markers" &
sleep 5
xterm -e " cd /home/workspace/catkin_ws; source devel/setup.bash; rosrun pick_objects pick_objects"