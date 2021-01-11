#!/bin/bash

export REPO_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PATH=$PATH:$REPO_PATH/scripts

export IMAGE_NAME=biomotion/teaserpp:pcl-1.9.1
export CONTAINER_NAME=tpp
