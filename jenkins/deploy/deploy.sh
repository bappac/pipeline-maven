#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/ec2-user/prod /tmp/.auth prod-user@172.31.50.200:/tmp/.auth
scp -i /home/ec2-user/prod ./jenkins/deploy/publish prod-user@172.31.50.200:/tmp/publish
ssh -i /home/ec2-user/prod prod-user@172.31.50.200 "/tmp/publish"
