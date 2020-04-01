#! /bin/sh

# This script must be ran as root (sudo su)
 
 
# Install dependencies
sudo apt-get install bash jq curl avahi-daemon dbus software-properties-common apparmor-utils -y;  # auto-answer Yes
 
 
# Install docker
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y;  # auto-answer Yes
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";
sudo apt-get update;
sudo apt-get install docker-ce -y;  # auto-answer Yes
 
 
# Replace user path with your user
curl -sL https://raw.githubusercontent.com/home-assistant/hassio-installer/master/hassio_install.sh | bash -s -- -d /home/me/docker/hassio
