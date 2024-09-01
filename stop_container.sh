#!/bin/bash

# Define your image name
IMAGE_NAME="sirishassss/simple-python-flask-app:latest"
PORT=5000

# Check if port is in use
if sudo lsof -i :$PORT > /dev/null; then
  echo "Port $PORT is in use. Stopping existing container..."

# Get the container ID or name running the image
CONTAINER_ID=$(docker ps -a -q  --filter ancestor="$IMAGE_NAME")

# Check if a container ID was found
if [ -z "$CONTAINER_ID" ]; then
  echo "No container found for image $IMAGE_NAME."
else
  echo "Stopping container with ID $CONTAINER_ID..."
  sudo docker stop "$CONTAINER_ID"
  sudo docker rm "$CONTAINER_ID"
fi
  echo Hi stopping
else
  echo "Port $PORT is not in use."
fi


