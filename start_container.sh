#!/bin/bash
set -e

PORT=5001

# Pull the Docker image from Docker Hub
 sudo docker pull sirishassss/simple-python-flask-app
#  sudo docker run -d  --name pytf -p 5000:5000 sirishassss/simple-python-flask-app
sudo docker run -d  --name jhbkjnmv -p 5000:80 nginx
echo HI Now its running fine