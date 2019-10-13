#!/bin/bash
#test
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 150
#apt update
#apt install python3-pip -y
#pip3 install --upgrade pip
#apt-get update
#apt-get install wget
#sudo apt update && sudo apt install curl gnupg2 lsb-release
#y
#curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
#sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
#wget https://github.com/ros2/ros2/releases/download/release-crystal-20190820/ros2-crystal-20190820-linux-bionic-amd64.tar.bz2
#mkdir -p ~/ros2_install
#cd ~/ros2_install
#tar xf ~/ROS/ros2-crystal-20190820-linux-bionic-amd64.tar.bz2
#sudo apt install -y python-rosdep
#rosdep init
#rosdep update
#CHOOSE_ROS_DISTRO=crystal
#rosdep install --from-paths ros2-linux/share --ignore-src --rosdistro $CHOOSE_ROS_DISTRO -y --skip-keys "console_bridge fastcdr fastrtps libopensplice67 libopensplice69 osrf_testing_tools_cpp poco_vendor rmw_connext_cpp rosidl_typesupport_connext_c rosidl_typesupport_connext_cpp rti-connext-dds-5.3.1 tinyxml_vendor tinyxml2_vendor urdfdom urdfdom_headers"


#install ros2 by ubuntu 18.04 with docker
#docker run --name 0858804-1 -p 6080:80 -p 5900:5900 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:bionic
#apt update
#apt install git -y
sudo apt-get update
sudo apt-get install wget
wget https://github.com/ros2/ros2/releases/download/release-crystal-20190820/ros2-crystal-20190820-linux-bionic-amd64.tar.bz2
mkdir -p ~/ros2_install
cd ~/ros2_install
tar xf ~/ROS/ros2-crystal-20190820-linux-bionic-amd64.tar.bz2
cd
export LANG=en_US.UTF-8
sudo apt update && sudo apt install curl gnupg2 lsb-release -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
export CHOOSE_ROS_DISTRO=crystal
sudo apt update
sudo apt install ros-$CHOOSE_ROS_DISTRO-desktop -y
sudo apt install ros-$CHOOSE_ROS_DISTRO-ros-base
sudo apt install python3-argcomplete
source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash
echo "source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash" >> ~/.bashrc
