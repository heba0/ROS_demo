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

Here's a non-exhastive list of installations that can be useful to run the commands in the next section

```
sudo apt update
sudo apt upgrade
sudo apt-get install ros-$ROS_DISTRO-joy ros-$ROS_DISTRO-teleop-twist-joy \
  ros-$ROS_DISTRO-teleop-twist-keyboard ros-$ROS_DISTRO-laser-proc \
  ros-$ROS_DISTRO-rgbd-launch ros-$ROS_DISTRO-rosserial-arduino \
  ros-$ROS_DISTRO-rosserial-python ros-$ROS_DISTRO-rosserial-client \
  ros-$ROS_DISTRO-rosserial-msgs ros-$ROS_DISTRO-amcl ros-$ROS_DISTRO-map-server \
  ros-$ROS_DISTRO-move-base ros-$ROS_DISTRO-urdf ros-$ROS_DISTRO-xacro \
  ros-$ROS_DISTRO-compressed-image-transport ros-$ROS_DISTRO-rqt* ros-$ROS_DISTRO-rviz \
  ros-$ROS_DISTRO-gmapping ros-$ROS_DISTRO-navigation ros-$ROS_DISTRO-interactive-markers\
  ros--$ROS_DISTRO-rosbridge-server ros-$ROS_DISTRO-turtlebot3* python3-catkin-tools 
```

### How to Run

## Running the simulation

To run the turtlebot simulation we will first need to source the ros setup.bash path in each new terminal. As a shortcut, we can instead add the source command to bashrc so it is executed everytime we open a new terminal: 

```echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc ```

we will also need to specify a model for the turtlebot as follows: 

  
```echo "export TURTLEBOT3_MODEL=waffle" >> ~/.bashrc```

In separate terminals run the following three commands:

Gazebo turtlebot3 simulations
```roslaunch turtlebot3_gazebo turtlebot3_world.launch```

Run turtlebot3_teleop package to allow you to move the turtlebot around (with w,d,a,s,x, keys)
```roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch```

Rviz Slam visuaization 
```roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping```


## Publishing dataset data

To publish the data, go to the dev_ws and initialise it
```cd dev_ws```
```catkin_make```

You will need to source the workspace in each terminal
```source ~/dev_ws/devel/setup.bash```

We always need to run a roscore instance for any communication to happen over ROS (roslaunch in the simulation runs roscore by default)
```roscore```

Run each of the following commands in a separate terminal to publish the respective health signal data (ecg/hr/rr)
```rosrun ecg_data ecg_publisher.py```
```rosrun ecg_data hr_publisher.py```
```rosrun ecg_data rr_publisher.py```
   
To debug or make sure the topics are published and are recieving data, run
```rostopic list```
```rostopic echo /ecg_data_topic```

## Data Visualization and Running the webserver 

To make the data accessible for the web-application run rosbridge_server
```roslaunch rosbridge_server rosbridge_websocket.launch```

You can then go to foxglove studio and visualize the topics of your choice

https://studio.foxglove.dev/



