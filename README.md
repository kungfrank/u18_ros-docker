# teaserpp-docker
Docker environment for TEASER-plusplus

## Requirements

- Docker-ce

## Build docker

For first time use, you need to build the docker image. The script is under `Docker/`

``` bash
cd Docker/ && ./build_docker.sh
```

Grab a tea and wait your computer to build the image.

Or, you can `pull` the image from dockerhub by running

```bash
docker pull biomotion/teaserpp:pcl-1.9.1
```

## Running docker

After you pull the docker image, you can now use scripts to navigate container and your pc.

### First, setup the environment
```bash
source environment.sh
```

Note: you should run this on every terminal opened later

### Second, start the container
```bash
tpp-start-container
```

### Enter the container
Enter the container everywhere in your computer
```bash
tpp-exec
```

### Close the container
```bash
tpp-stop-container
```
