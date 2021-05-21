#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp  /tmp/.auth root@221.132.27.176:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish root@221.132.27.176:/tmp/publish
ssh root@221.132.27.176 "/tmp/publish"
