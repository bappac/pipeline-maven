#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u bappac -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG bappac/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push bappac/$IMAGE:$BUILD_TAG
