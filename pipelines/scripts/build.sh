#!/bin/bash

export IMAGE_NAME=${IMAGE_NAME:-flaskr}
export REGISTRY_URL=${REGISTRY_URL:-kkalynovskyi}
export TAG=${TAG_APACHE:-latest}

# Building and pushing container

docker build -t "${REGISTRY_URL}"/"${IMAGE_NAME}":"${TAG}" -f Dockerfile .
docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
docker push "${REGISTRY_URL}"/"${IMAGE_NAME}":"${TAG}"
docker rmi --force "${REGISTRY_URL}"/"${IMAGE_NAME}":"${TAG}"

exit 0

