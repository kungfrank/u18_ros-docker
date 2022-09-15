#!/bin/bash

export REPO_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH=$PATH:$REPO_PATH/scripts
export IMAGE_NAME=pckung/u18_ros
export CONTAINER_NAME=u18
