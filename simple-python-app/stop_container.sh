#!/bin/bash
set -e

PORT=5001
CONTAINER_NAME="python"

# Check if the container is running and stop it
if [ "$(docker ps -q -f name=python)" ]; then
    echo "Stopping existing container: python"
    docker stop python
fi

# Check if the container exists and remove it
if [ "$(docker ps -a -q -f name=python)" ]; then
    echo "Removing existing container: python"
    docker rm python
fi

echo "Container stopped and removed (if it existed)."
