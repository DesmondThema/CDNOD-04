#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="desthedev/mlapi"

# Run the Docker Hub container with kubernetes
kubectl run mlmicroserviceapi\
    --image=$dockerpath\
    --port=80 --labels app=mlmicroserviceapi

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward mlmicroserviceapi 8000:80

