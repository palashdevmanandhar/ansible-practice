#!/bin/bash

# define variables to use in the script
ansible_path="/home/ansible"
roles_path="$ansible_path/roles"
baseline_path="$roles_path/baseline"


# create a roles directory at /home/ansible
mkdir $roles_path

# provide ownership of the roles directory to ansible
sudo chown ansible.ansible $roles_path

# create a basline ansible role
mkdir $baseline_path

# create sub-directories for the baseline role
mkdir $baseline_path/{templates,tasks,files}

# copy necessary files to the baseline role's files and templates directory
cp /home/ansible/resources/motd.j2 $baseline_path/templates
cp /home/ansible/resources/authorized_keys $baseline_path/files

# create a main.yml file for baseline role
echo "---" > $baseline_path/tasks/main.yml

