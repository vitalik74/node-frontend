#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t omrumbakitemiz/node-frontend:13 .

docker build -t omrumbakitemiz/node-frontend:latest .

docker push omrumbakitemiz/node-frontend:13

docker push omrumbakitemiz/node-frontend:latest
