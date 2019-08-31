#!/bin/bash

# NOTE: must be ran as `. scripts/start_agent.sh` to ensure the parent process
# has the ssh-agent variables.

KEY_PATH=$(dirname $BASH_SOURCE)/../keys/ansible_id_rsa

eval $(ssh-agent -s)
ansible-vault view $KEY_PATH | ssh-add -
