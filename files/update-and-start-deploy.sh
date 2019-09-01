#!/bin/bash

# Script to update to the latest branch and kick off the deployment

# Set up logging for standard out
exec 3> >(logger -t deploy-script)
BASH_XTRACEFD='3'
exec >&3 2>&1

export GIT_WORK_TREE=/var/code/bidsoup
export GIT_DIR=$GIT_WORK_TREE/.git
git fetch
git checkout -f origin/master

DEPLOY_DIR=${GIT_WORK_TREE}/metal
chmod u+x,g+x -R $DEPLOY_DIR
. site-settings.sh
cd ${GIT_WORK_TREE}
${DEPLOY_DIR}/deploy.sh master
