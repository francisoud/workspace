#!/bin/bash

# set -o nounset
# set -o errexit

# todo replace with a deb apt-get install hibernatus.deb install with dependency to ansible

# boostrap script to install base tools: hibernatus and its dependencies
sudo apt-get --quiet -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get --quiet -y update
sudo apt-get --quiet -y install ansible

# sudo ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml
