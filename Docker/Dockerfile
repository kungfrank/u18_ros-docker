ARG ROS_VERSION=melodic-perception
FROM ros:${ROS_VERSION}

ARG PCL_VERSION=1.9.1
ARG PYTHON_VERSION=3.6

LABEL maintainer="Benson <bensonpuppy1997@gmail.com>"

RUN apt-get update && \
    apt-get install -y \
        cmake libeigen3-dev libboost-all-dev build-essential \
        vim \
        python${PYTHON_VERSION}-dev python3-pip \
        wget zip unzip && \
        rm -rf /var/lib/apt/lists/*
        
WORKDIR /tmp
COPY install_pcl.sh .
RUN echo $PCL_VERSION
RUN bash install_pcl.sh ${PCL_VERSION}

RUN update-alternatives --install /usr/bin/python python /usr/bin/python${PYTHON_VERSION} 1
RUN git clone https://github.com/MIT-SPARK/TEASER-plusplus.git && \
    cd TEASER-plusplus && mkdir build && cd build && \
    cmake -DBUILD_TEASER_FPFH=ON -DBUILD_WITH_MARCH_NATIVE=ON .. && \
    make -j12 && \
    make install && \
    cmake -DTEASERPP_PYTHON_VERSION=${PYTHON_VERSION} .. && \
    make -j12 teaserpp_python && \
    cd python && pip3 install .

