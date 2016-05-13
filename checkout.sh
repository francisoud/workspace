#!/bin/bash

# todo replace with auto install
sudo ansible-galaxy install cchurch.scm


# -e ansible_ssh_user=francisoud => workaround bug in https://galaxy.ansible.com/cchurch/scm/
# Ansible 2.0 has deprecated the “ssh” from ansible_ssh_user, ansible_ssh_host, and ansible_ssh_port to become ansible_user, ansible_host, and ansible_port. If you are using a version of Ansible prior to 2.0, you should continue using the older style variables (ansible_ssh_*). These shorter variables are ignored, without warning, in older versions of Ansible.

ansible-playbook playbook.yml -e ansible_ssh_user=francisoud
