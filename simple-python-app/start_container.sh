#!/bin/bash
set -e

PORT=5001

# Pull the Docker image from Docker Hub
docker pull sirishassss/simple-python-flask-app:latest

# Run the Docker image as a container
docker run -d python -p 5001:5001 sirishassss/simple-python-flask-app:latest

