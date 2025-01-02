#!/bin/bash

#define variables
ansible_home="/home/ansible"
roles_path="${ansible_home}/roles"
baseline_path="${roles_path}/baseline"
resources_path="${ansible_home}/resources"

# create a directory for roles
mkdir ${ansible_home}/roles

# create a baseline role
mkdir ${roles_path}/baseline

# create sub directories for baseline role 
mkdir ${roles_path}/baseline/{templates,tasks,files}

# move the template resource to it's desired destination inside the role
cp ${resources_path}/motd.j2 ${baseline_path}/templates/

# move file to desired destination
cp ${resources_path}/authorized_keys ${baseline_path}/files