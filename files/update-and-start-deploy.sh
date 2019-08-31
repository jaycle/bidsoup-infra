#!/bin/bash

# Script to update to the latest branch and kick off the deployment

export GIT_WORK_TREE=/var/code/bidsoup
export GIT_DIR=$GIT_WORK_TREE/.git
git fetch
git checkout -f origin/master

DEPLOY_DIR=${GIT_WORK_TREE}/metal
chmod u+x,g+x -R $DEPLOY_DIR
. site-settings.sh
cd ${GIT_WORK_TREE}
${DEPLOY_DIR}/deploy.sh master
