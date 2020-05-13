#! /bin/sh

# This script must be ran as root (sudo su)
 
 
# Install dependencies
tput setaf 201; echo ""; echo "Step 1, Installing dependencies"; echo "";
sudo apt-get install bash jq curl avahi-daemon dbus software-properties-common apparmor-utils -y;  # auto-answer Yes

 
# Install docker
tput setaf 201; echo ""; echo "Step 2, Installing Docker"; echo "";
tput setaf 201; echo ""; echo "Step 2a"; echo "";
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y;  # auto-answer Yes
tput setaf 201; echo ""; echo "Step 2b"; echo "";
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
tput setaf 201; echo ""; echo "Step 2c"; echo "";
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";
tput setaf 201; echo ""; echo "Step 2d"; echo "";
sudo apt-get update;
tput setaf 201; echo ""; echo "Step 2e"; echo "";
sudo apt-get install docker-ce -y;  # auto-answer Yes
 
 
# Replace user path with your user
tput setaf 201; echo ""; echo "Step 3, Installing Home Assistant"; echo "";
curl -sL https://raw.githubusercontent.com/home-assistant/supervised-installer/master/installer.sh | bash -s -- -d /home/me/docker/hassio
