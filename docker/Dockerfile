FROM osrf/ros:noetic-desktop-full 

ARG DEBIAN_FRONTEND=noninteractive


WORKDIR /root/

RUN apt clean && rm -rf /var/lib/apt/lists/* && apt update && apt upgrade -y

RUN apt-get install -y ros-noetic-moveit ros-noetic-ros-controllers ros-noetic-gazebo-ros-control ros-noetic-rosserial \
 ros-noetic-rosserial-arduino ros-noetic-roboticsgroup-upatras-gazebo-plugins ros-noetic-actionlib-tools 

RUN apt update

RUN apt install -y neofetch clang python3-pip wget ca-certificates gnupg \ 
    astyle build-essential cmake cppcheck file g++ gcc gdb git \
    libxml2-dev libxml2-utils make ninja-build python3 python3-dev bc \
    python3-setuptools python3-wheel rsync shellcheck unzip zip \
    gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav \
    libeigen3-dev libgstreamer-plugins-base1.0-dev libimage-exiftool-perl \
    libopencv-dev pkg-config protobuf-compiler \
    python3-rospkg software-properties-common libboost-all-dev 

RUN wget https://packages.osrfoundation.org/gazebo.gpg -O \
	/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg;
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" \
    | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null


RUN apt update && apt install -y ros-noetic-pcl* libsuitesparse-dev ros-noetic-octomap* libtbb-dev

RUN apt install -y python3-catkin-tools python3-osrf-pycommon 

RUN mkdir -p catkin_ws/src && cd catkin_ws  
# RUN cd src 
# RUN git clone https://github.com/UnknownFreeOccupied/ufomap.git 
# RUN catkin build 
# git clone https://github.com/ethz-asl/voxblox.git \
# wstool init . ./voxblox/voxblox_https.rosinstall \
# wstool update \
# catkin build voxblox_ros

USER root
RUN usermod -a -G dialout root

SHELL [ "/bin/bash", "-c" ]