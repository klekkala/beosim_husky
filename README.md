# Documentation for CS590
This project aims to build models and simulate environments for robots. All of the simulated worlds were made and built in Gazebo.


## Repository:
https://github.com/klekkala/beosim_husky


## Setup Environments:
-	Ubuntu 18.04

-	Gazebo: gazebo version 9.0

-	ROS version: Melodic

Installation and basic tutorials are in reference 9 and 10.

## Project Stages:

### Stage 1: Load Existing Models
Load existing environment and husky and maze models(see reference 1,2,8) into Gazebo environments. 
They are all static models (the directory at your ubuntu machine is located in gym-gazebo/gym_gazebo/envs/assets/models/).

The Husky model is a pre-built gazebo model. It can be loaded directly in the gazebo (in your computer, they are located in .gazebo/).

The following world is loaded by ros launch file. it can be downloaded and compiled from this link.


### Stage 2:  Implement Elevator Models
Elevator is also a pre-built model in the gazebo. In this stage, a maze and the husky robot are integrated into this world. Husky is designed to interact with the maze and the elevator. 
Husky is controlled by scripts to move into the elevator, and the elevator can move it from the first floor to the second one.

### Stage 3: Build the Maze with Door
The maze is using pre-built Gazebo models. In the newest version of Gazebo model libraries (see reference 1), there are a few available doors that can be used. The door is placed between two walls, and we expect our husky robot can open the door and go out of the maze in the next stages.

### Stage 4: Integrate Husky with UR10
Here are some useful links that can be used as references. ROS wiki has an official tutorial showing how to integrate husky and ur robots (see reference 2,3,5,7). However, these tutorials and links are designed for previous ROS versions. For example, the official tutorial is designed for the Indigo version. And after that,  the official husky launch file removed the UR robot interface, which means it is no longer available to load UR robots into husky easily like the tutorial given. 
For detailed reasons, it can be seen from this documentation (see reference 7).
Another solution is to use gazebo models instead of compiling URDF files into the integrated robot. There might be some drawbacks, the UR robot and husky robot seem to be stuck together, but they are not considered as an integrated robot. In this way, the “integrated” robot may not be able to perform complicated operations such as twisting door handles and grip some items. 

### Stage 5: Manipulate Husky to Open the Door
As mentioned before, this integrated husky_ur robot should be considered as pseudo-integration. In order to move it along the corridor and open the door. Constant force should be applied to this robot. Force can be set in the Gazebo control panel. 
Firstly, the X-axis force is applied to the husky_ur, and it moves towards the door until it touches the door. To open the hinge-door along the Z-axis, a Y-axis force is also needed to avoid the husky_ur robot from pushing the door too much or turn itself over. A correct way of opening the door process is shown in below images.

## Future Work:
Currently the unsolved problem in this project is that the husky_ur robot cannot work properly as an integrated robot. The robot cannot move and use its manipulator to twist the door handle then open the door. They are actually separate robots. 
In next steps, one potential solution is to implement ROS MoveIt packages to make these two robots functionally integrated(do kinematics and collision tests and make trajectory planning).


## References:
1. Gazebo Models: 
https://github.com/osrf/gazebo_models

2. Husky Official Pages: 
http://wiki.ros.org/Robots/Husky

3. Husky with ur5 integration: 
http://wiki.ros.org/husky_ur5_moveit_config/Tutorials/Husky%20UR5%20Mobile%20Manipulation%20Demo

4. Package Initialization:
http://wiki.ros.org/catkin/Tutorials/create_a_workspace

5. Universal Robot: 
https://github.com/ros-industrial/universal_robot/tree/melodic-devel-staging

http://wiki.ros.org/action/show/universal_robots?action=show&redirect=universal_robot

https://answers.ros.org/question/318564/spawning-husky-robot-with-ur5/

6. Maze and Husky repos:
https://github.com/wangcongrobot/dual_ur5_husky_mujoco

https://github.com/erlerobot/gym-gazebo

7. Difficulties to integrate husky and universal robot:
https://docs.google.com/document/d/1n-8UeU3AcyXO5rm9a9HHvpFZmVjUdpsoUWWxoUwSzw0/edit

8. Gym Gazebo:
https://github.com/erlerobot/gym-gazebo

9. Gazebo Installation and Tutorials:
http://gazebosim.org/tutorials?tut=install_ubuntu&cat=install

10. ROS installation and Tutorials:
http://wiki.ros.org/melodic/Installation/Ubuntu


