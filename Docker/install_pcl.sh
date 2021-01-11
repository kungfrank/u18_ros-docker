#!/bin/bash

PCL_VERSION=1.9.1
if [ ! -z $1 ]; then
    PCL_VERSION=$1
fi

wget "https://github.com/PointCloudLibrary/pcl/archive/pcl-${PCL_VERSION}.tar.gz"
tar -zxvf pcl-${PCL_VERSION}.tar.gz && rm pcl-${PCL_VERSION}.tar.gz
mkdir -p pcl-pcl-${PCL_VERSION}/build && cd pcl-pcl-${PCL_VERSION}/build
ls
cmake ..
make -j$(python -c 'import multiprocessing as mp; print(int(mp.cpu_count() * 1.5))')
make install
