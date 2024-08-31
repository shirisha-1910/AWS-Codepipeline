#!/bin/bash
set -e

# Container name
CONTAINER_NAME="sirishassss/simple-python-flask-app"

# Stop and remove existing container if it exists
if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "Stopping and removing existing container..."
    docker stop "$CONTAINER_NAME" || true
    docker rm "$CONTAINER_NAME" || true
else
    echo "No existing container found with the name $CONTAINER_NAME."
fi

# Run the new container
echo "Running new container..."
docker run -d -p 5001:5001 --name "$CONTAINER_NAME" "$CONTAINER_NAME"
