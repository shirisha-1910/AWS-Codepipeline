#!/bin/bash
set -e

PORT=5001

# Pull the Docker image from Docker Hub
sudo docker pull sirishassss/simple-python-flask-app
sudo docker run -d -p 5001:5001 sirishassss/simple-python-flask-app
