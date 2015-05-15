#!/bin/bash

### Update system and install docker.io package
echo "Installing dependencies"
sudo apt-get update
sudo apt-get install -y git docker.io

# Clone seleniumTests repository
echo "Cloning selenumTests repository"
SELENIUM_TESTS_BRANCH="embedded_views_test"
git clone -b ${SELENIUM_TESTS_BRANCH} --single-branch https://github.com/codebendercc/seleniumTests.git

echo "Copying test script"
cp test.sh seleniumTests/

echo "Copying ssmtp configuration"
cp ssmtp.conf seleniumTests/

# build docker container
echo "Building docker container"
cd seleniumTests
sudo docker build -t codebender/selenium .
cd ..
