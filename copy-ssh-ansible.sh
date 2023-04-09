#!/bin/bash

# define the IP addresses of the servers
SERVERS="192.168.10.15 192.168.10.18 192.168.10.65"

# define the path to the SSH key on your local host which needs to be copied tothe servers
LOCAL_KEY="/Users/shantanu/.ssh/ansible"

# define the path to the directory on the servers where the SSH key will be stored
REMOTE_DIR="/home/ubuntu/.ssh"

# define the name of the SSH key on the servers
REMOTE_KEY="ansible"

# define the username to use for the SSH connection
USER="ubuntu"

# define the path to the private key to establish the SSH connection to the servers.
PRIVATE_KEY="/path/to/private/key"

# loop through each server and copy the SSH key
for SERVER in $SERVERS; do
    scp -i $PRIVATE_KEY $LOCAL_KEY $USER@$SERVER:$REMOTE_DIR/$REMOTE_KEY
done
