#!/bin/bash
set -e

PORT=5001
CONTAINER_NAME="python"

# Pull the Docker image from Docker Hub
echo "Pulling Docker image..."
docker pull sirishassss/simple-python-flask-app:latest

# Run the Docker image as a new container
echo "Running new Docker container..."
docker run -d --name python -p 5001:5001 sirishassss/simple-python-flask-app:latest

echo "Container started."
