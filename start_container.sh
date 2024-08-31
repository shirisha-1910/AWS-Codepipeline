#!/bin/bash
set -e

PORT=5001

#m Pull the Docker image from Docker Hub
docker pull sirishassss/simple-python-flask-app
docker run -d --name python -p 5001:5001 sirishassss/simple-python-flask-app
