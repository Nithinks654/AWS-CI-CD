#!/bin/bash
set -e

echo "Stopping existing container..."

CONTAINER_ID=$(docker ps -q)

if [ ! -z "$CONTAINER_ID" ]; then
  docker rm -f $CONTAINER_ID
  echo "Container stopped and removed"
else
  echo "No running container found"
fi
