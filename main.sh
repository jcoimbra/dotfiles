#!/bin/bash

printf "\033[0;32mInstalling ansible\033[0m\n"
pip install ansible

printf "\033[0;32mInstalling community.general from ansible-galaxy\033[0m\n"
ansible-galaxy collection install community.general

printf "\033[0;32mRunning ansible\033[0m\n"
ansible-playbook --diff --ask-become-pass main.yml

