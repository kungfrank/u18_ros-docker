ARG ROS_VERSION=melodic-perception
FROM ros:${ROS_VERSION}
ARG PYTHON_VERSION=3.6

LABEL maintainer="Frank Kung <pckung@umich.edu>"

RUN apt-get update \
    && \
    apt-get install -y \
        cmake libeigen3-dev libboost-all-dev build-essential \
        vim \
        python${PYTHON_VERSION}-dev python3-pip \
        wget zip unzip \ 
        rviz \
        ros-${ROS_DISTRO}-rqt \
    && \
    rm -rf /var/lib/apt/lists/* \
    && \
    echo 'source /ros_entrypoint.sh' >> ~/.bashrc
        
WORKDIR /tmp


