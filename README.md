### Overview

In this project, I run a ROS-Gazebo SLAM simulation and visualize the image on a web-based dashoboard, as well as read data from a dataset that I have in a folder called "Dataset_ECG_1" and publish the data to the same dashboard.

-- I didn't include  the dataset to the github repo, but you can add a place holder to this path: /dev_ws/src/ecg_data/scripts -- 

![Screenshot from 2023-06-08 14-13-50](https://github.com/heba0/ROS_demo/assets/23173305/33eeab9e-2621-4bf6-b940-64628e79cdbb)

### Implementation

Note: this version uses ROS1 noetic.

For the simulation, I'm using turtlebot3 libraries that can be installed directly from ROS repos, with the help of these 3 packages: roscoreroscoreroscore
- turtlebot3_gazebo for the simulation
- turtlebot3_teleop to move the robot around
- turtlebot3_slam for localization

![slam_map](https://github.com/heba0/ROS_demo/assets/23173305/e181d672-b9d6-4905-a8f1-afcd538f6da2)


To visualize the robot on the web-based dashboard I'm using https://studio.foxglove.dev/  with rosbridge package.

Data publishing is done mainly through the local workspace shared here called ```dev_ws``` and ```ecg_data``` package defined within.

To publish the data read from the dataset I created a custom message of type:
```
string signal_type
string project_id
string user_id
time time
float64 data
```

Each signal type is published to a separate topic, so we publish 3 topics in total: 

- ```/ecg_data_topic```
- ```/rr_data_topic```
- ```/hr_data_topic```

### Prerequisites Installations

```
sudo apt update
sudo apt upgrade
sudo apt install ros-$ROS_DISTRO-turtlebot3*
```

### How to Run

  ```echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc ```

  ```source ~/dev_ws/devel/setup.bash```
  
  ```export TURTLEBOT3_MODEL=waffle```
  
   ```rosrun ecg_data ecg_publisher.py```
   
   ```roscore```
   
 ```roslaunch turtlebot3_gazebo turtlebot3_world.launch```

```roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch```


```roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping```

```roslaunch rosbridge_server rosbridge_websocket.launch```

https://studio.foxglove.dev/



