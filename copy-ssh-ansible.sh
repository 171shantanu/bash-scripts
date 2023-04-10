#!/bin/bash

# define the IP addresses of the servers
SERVERS="54.160.161.164 35.171.225.179 3.89.85.20"

# define the path to the SSH key on your local host which needs to be copied tothe servers
LOCAL_KEY="/Users/shantanu/.ssh/ansible"

# define the path to the directory on the servers where the SSH key will be stored
REMOTE_DIR="/home/ubuntu/.ssh"

# define the name of the SSH key on the servers
REMOTE_KEY="ansible.pub"

# define the username to use for the SSH connection
USER="ubuntu"

# define the path to the private key to establish the SSH connection to the servers.
PRIVATE_KEY="/Users/shantanu/Desktop/learning-repos/managed-k8s-tf/self-k8s-key.pem"

# loop through each server and copy the SSH key
for SERVER in $SERVERS; do
  scp -i $PRIVATE_KEY $LOCAL_KEY $USER@$SERVER:$REMOTE_DIR/$REMOTE_KEY
done