#!/bin/bash

#this script install jenkins on an ubuntu machine

#Updating apt
sudo apt-get update

#Install java 11
sudo apt-get install openjdk-11-jdk -y

#Download and Install Jenkins package
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y 

# Start the Jenkins service
sudo systemctl start jenkins.service 

# Checking jenkins status
sudo systemctl status jenkins > jenkins_status.txt

# Opening port 8080 on ubuntu firewall
sudo ufw allow 8080
echo "y" | sudo ufw enable

# Checking ufw firewall status
sudo ufw status > ufw_status.txt

# Getting the jenkins intial password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > jenkins_intialpass.txt