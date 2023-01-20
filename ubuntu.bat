git clone https://github.com/RedTeamer69/DockerMagic.git
cd DockerMagic && cd ubuntu
docker build -t ubuntu:latest .
docker run -d --name ubuntu -p 12222:22 ubuntu:latest
