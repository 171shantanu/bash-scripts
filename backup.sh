#!/bin/bash

# Checking if the users has entered two arguments
if [ $# -ne 2 ]
then
    echo "Usage: backup.sh <source_direcrory> <target_directory>"
    echo "Please try again."
    exit 1
fi

# Check if rsync is installed.
if ! command -v rsync > /dev/null 2>&1
then
    echo "This scripty requires rsync to be installed."
    echo "Please use your distribution's package manager to install rsync and try again."
    exit 2
fi

# Capturing the current date and time and storing it in a YYY-MM-DD format.
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete"

$(which rsync) $rsync_options $1 $2/current >>backup_$current_date.log