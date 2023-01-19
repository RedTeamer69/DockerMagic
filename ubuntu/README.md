# Ubuntu ssh sandbox

Build your own private and secure ssh Ubuntu sandbox. There is a very fast and effective setup. Works perfectly on both OS Linux/Windows. Runs very well with  WSL2 docker integration Win 10/11. It's private and secure enviroment. Docker image/container is built locally on your computer.

## Prerequisites

git, docker / Docker Desktop, wsl2

## Setup
Open new command prompt window or shell environment when using Linux and just copy and paste following command: 

```cmd
git clone https://github.com/RedTeamer69/DockerMagic.git
cd DockerMagic && cd ubuntu
docker build -t ubuntu:latest .
docker run -d --name ubuntu -p 12222:22 ubuntu:latest
```

## Connect to sandbox
Try it
```cmd
ssh -p 12222 root@127.0.0.1
```

## Clean up

Don't forget to clean up after you're done. 
```cmd
docker stop  ubuntu
docker rm ubuntu
```
