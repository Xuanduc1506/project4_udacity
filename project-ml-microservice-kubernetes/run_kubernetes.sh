#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="ducnx1506/udaproject4"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udaproject4 \
        --image=ducnx1506/udaproject4 --port=80 \
        --labels app=udaproject4

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward udaproject4 8000:80

