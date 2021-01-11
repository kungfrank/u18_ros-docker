#!/bin/bash

PCL_VERSION=1.9.1
if [ ! -z $1 ]; then
    PCL_VERSION=$1
fi

echo $PCL_VERSION

docker build --rm \
    --no-cache \
    --build-arg PCL_VERSION=${PCL_VERSION} \
    -t biomotion/teaserpp:pcl-${PCL_VERSION} .