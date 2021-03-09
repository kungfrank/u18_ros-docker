# teaserpp-docker
Docker environment for TEASER-plusplus

## Requirements

- Docker-ce

## Building docker image

For first time use, you need to build the docker image. The script is under `Docker/`

``` bash
cd Docker/ && ./build_docker.sh
```

Grab a tea and wait for your computer to build the image.

Or, you can `pull` the image from dockerhub by running

```bash
docker pull biomotion/teaserpp:pcl-1.9.1
```

## Running container

After you pull the docker image, you can now use scripts to navigate the container and your pc.

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

You can leave the container by simply close the terminal or `exit`/`ctrl+D` to exit gently. Remember that the container is still running in background unless you [stop the container](#stop-the-container).

### Stop the container
```bash
tpp-stop-container
```
