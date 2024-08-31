#!/bin/bash
set -e

# Stop the running container (if any)
echo "Stopping and removing existing container..."
docker stop sirishassss/simple-python-flask-app || true
docker rm sirishassss/simple-python-flask-app|| true
