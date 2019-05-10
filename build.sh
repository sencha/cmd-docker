#!/usr/bin/env bash

envsubst '${CMD_VER}' < Dockerfile.in > Dockerfile

docker build --pull --tag ${IMG}:${CMD_VER} .
docker tag ${IMG}:${CMD_VER} ${IMG}:${CMD_VER_SHORT}
docker tag ${IMG}:${CMD_VER} ${IMG}:latest

echo "To push latest docker images:"
echo "    docker push ${IMG}:${CMD_VER}"
echo "    docker push ${IMG}:${CMD_VER_SHORT}"
echo "    docker push ${IMG}:latest"
