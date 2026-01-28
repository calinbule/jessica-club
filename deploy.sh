#!/bin/bash

echo "Deploying application..."
echo "===================="
echo "Resetting local changes and pulling latest code from master branch."
git reset --hard
git pull origin master
echo "Building and starting Docker containers."
docker compose build --no-cache
echo "Starting containers in detached mode."
docker compose up -d
echo "Deployment complete!"