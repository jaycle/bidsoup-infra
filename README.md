## User Guide
This project contains the configuration required to stand up the bidsoup project on a VPS.

### Pre-requiesites
The main requirement is ansible and it should be run from linux. This also assumes that an ansible user with sudo exists
on the target machine.

The steps to deploy are:
0. Know the vault passwords!
1. Install dependent roles: `ansible-galaxy install -r requirements.yml`
2. Run `. scripts/start_agent.sh`. This will set up an ssh agent with the necessary credentials.
3. Run ansible. `ansible-playbook --ask-vault-pass -i hosts provision.yml`
