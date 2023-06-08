*Overview*
In this project, I run a ROS-Gazebo SLAM simulation and visualize the image on a web-based dashoboard, as well as read data from a dataset that I have in a folder called "Dataset_ECG_1" and publish the data to the same dashboard.

-- I didn't include  the dataset to the github repo, but you can add a place holder to this path: /dev_ws/src/ecg_data/scripts -- 

![Screenshot from 2023-06-08 14-13-50](https://github.com/heba0/ROS_demo/assets/23173305/33eeab9e-2621-4bf6-b940-64628e79cdbb)

*Implementation*

Note: this version uses ROS1 noetic.

For the simulation, I'm using turtlebot3 libraries that can be installed directly from ROS repos, with the help of these 3 packages: 
- turtlebot3_gazebo for the simulation
- turtlebot3_teleop to move the robot around
- turtlebot3_slam for localization

To visualize the robot on the dashboard I'm using https://studio.foxglove.dev/  with rosbridge package.






*How to Run*

