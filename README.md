# Codebender selenium tests for embedded views

### Contents
- Overview
- Usage
- Files

#

### Overview
Some scripts used to run selenium tests for embedded views.

#

### Usage
1. Edit ssmtp.conf to setup a valid e-mail configuration
2. Run ./build.sh once
3. Run ./run.sh to test (schedule run.sh as a cron job)
#

### Files:
- build.sh
- test.sh
- run.sh
- ssmtp.conf

#### build.sh:
- Installs the required dependencies (Ubuntu is supported)
- Clones the seleniumTests repository `branch: embedded_views_tests`
- Copies the required files into seleniumTests directory `test.sh, ssmtp.conf`
- Builds the docker container used to run the tests

#### test.sh
- Runs the selenium tests inside the docker container and notifies via e-mail after a test failure (attaching the test log into the e-mail)

#### run.sh
- Script used to start the tests (run with `./run.sh`) and can be scheduled as a cron job in order to periodicaly run the tests

#### ssmtp.conf
- e-mail configuration file needed for sending e-mails through the terminal
Below is a sample configuration using gmail as the mailing server
for e-mail: test

```
root=test@gmail.com
hostname=test
AuthUser=test
AuthPass=PASSWORD
rewriteDomain=gmail.com
mailhub=smtp.gmail.com:587
FromLineOverride=YES
UseTLS=YES
UseSTARTTLS=Yes
```
