# u18_ros-docker
Docker environment for Ubuntu 18 + ROS Melodic + X11 output

## Requirements
- Docker-ce

## First, setup the environment
```bash
cd u18_ros-docker 
echo 'source '$PWD'/environment.sh' >> ~/.bashrc
```

## Build a docker image. 
Open a new terminal.
``` bash
cd Docker && \
sudo ./build_docker.sh && \
sudo docker image ls
```

## Build a docker container
``` bash
u18-start-container
sudo docker ps
```

## Execute the docker container
```bash
u18-exec
```
You can leave the container by simply close the terminal or `exit`/`ctrl+D` to exit gently. Remember that the container is still running in background unless you [stop the container](#stop-and-delete-the-container).

## Stop and delete the container
```bash
u18-stop-container
```

## Delete image
```bash
sudo docker image rm pckung/u18_ros
sudo docker image ls
```
