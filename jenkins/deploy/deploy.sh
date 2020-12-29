#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /var/jenkins_home/ssh/prod /tmp/.auth prod-user@172.31.50.200:/tmp/.auth
scp -i /var/jenkins_home/ssh/prod ./jenkins/deploy/publish prod-user@172.31.50.200:/tmp/publish
ssh -i /var/jenkins_home/ssh/prod prod-user@172.31.50.200 "/tmp/publish"
