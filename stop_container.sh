#!/bin/bash
set -e

# Stop the running container (if any)
echo "Stopping and removing existing container..."
docker stop sirishassss/simple-python-flask-app || true
docker rm sirishassss/simple-python-flask-app|| true

echo "Running new container..."
docker run -d -p 5001:5001 --name sirishassss_simple_python_flask_app sirishassss/simple-python-flask-app
