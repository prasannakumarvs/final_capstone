#!/bin/bash

# Define variables
DOCKER_IMAGE="capstone_proj"
DEV_REPO="prasannakumarvs/dev"
PROD_REPO="prasannakumarvs/prod"
DEV_TAG="dev"
PROD_TAG="prod"

# Check if the current branch is 'dev'
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    
    # Tag and push the Docker image to dev repository with dev tag
    docker login -u prasannakumarvs -p Max#30012023
    docker tag "$DOCKER_IMAGE" "$DEV_REPO:$DEV_TAG"
    docker push "$DEV_REPO:$DEV_TAG"


# Check if the current branch is 'master' (assuming the master branch is where merges from dev occur)
elif [[ $GIT_BRANCH == "origin/master" ]]; then //chang
    
    # Tag and push the same Docker image to prod repository with prod tag
    docker login -u prasannakumarvs -p Max#30012023
    docker tag "$DOCKER_IMAGE" "$PROD_REPO:$PROD_TAG"
    docker push "$PROD_REPO:$PROD_TAG"
fi
