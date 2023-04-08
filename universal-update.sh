#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log 

# if satement that will run for Arch based distribution.
if grep -q "Arch" $release_file
then
    #If the host is based on Arch it will run the pacman update command
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "There is an error, please check the $errorlog file."
    file
fi 

# if satement that will run for Debian/Ubuntu based distribution.
if grep -q "Debian" $release_file || if grep -q "Ubuntu" $release_file 
then
    #If the host is based on Debain/Ubuntu it will run the apt update command
    sudo apt update 1>>$logfile 2>>$errorlog
    if [ $? ne 0 ]
    then
        echo "There is an error, please check the $errorlog file."
    fi 
    sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
    if [ $? ne 0 ]
    then
        echo "There is an error, please check the $errorlog file."
    fi 
fi  