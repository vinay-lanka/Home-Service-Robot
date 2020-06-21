# Home Service Robot

## Introduction

A Home Service Robot simulated in ROS and Gazebo. Can navigate to a maker, pick up a virtual object and drop it off at another maker. 

**Simulation** (check /media)

![gif of implementation](./media/project.gif)

## Setup

**Requires ROS and Gazebo to be installed**
(A guide for installation can be found [here](http://wiki.ros.org/ROS/Installation))

### Building
Clone the repository in your src folder of your catkin env. <br>
After running `catkin_make`, source your setup files and you're good to go.



## Observations

The project requires us to `  add_marker`, guide a robot to the position marked, and pick up a virtual object and hide it.
<br>
After waiting for 5 seconds, plan another trajectory to the waypoint marked by another marker.
<br>
When it reaches the second maker, show the virtual object to simulate a drop.

## Packages used

### Localization

Localization is implemented here using AMCL ros package: http://wiki.ros.org/amcl

The algorithm here is Adaptive Monte Carlo.

### Mapping

Mapping is done with gmapping ros package using laser sensor and robot pose: http://wiki.ros.org/gmapping

In a previous step we drive the robot into the environment to generate a map file (pgm) that will be used afterwards for localization and navigation. 

### Navigation

Navigation is done with move_base ros package: http://wiki.ros.org/move_base

This package is able to compute a path using the map and drive the robot to a goal. Also there are messages allowing to monitor the state of the robot (position and status reaching the goal)

### Robot - Turtlebot

The packages used here are related to the turtlebot - <br>

turtlebot_teleop: this package is used to navigate the robot in the gazebo world to map the environment.
<br>
turtlebot_rviz_launchers: load the Rviz workspace.
<br>
turtlebot_gazebo: this pkg create a gazebo environment with world file and turtlebot simulation robot.