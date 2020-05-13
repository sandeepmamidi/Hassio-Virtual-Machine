#! /bin/sh

# This script must be ran as root (sudo su)

# Formatting commands:
# tput setaf 201 = Pink text
# tput bold	 = Bold text
# tput sgr0	 = Turn off all attributes (plain text)


# Install dependencies
tput setaf 201; tput bold; echo ""; echo "Step 1, Installing dependencies"; echo ""; tput sgr0;
sudo apt-get install bash jq curl avahi-daemon dbus software-properties-common apparmor-utils -y;  # auto-answer Yes


# Install docker
tput setaf 201; tput bold; echo ""; echo "Step 2, Installing Docker"; echo ""; tput sgr0;
tput setaf 201; tput bold; echo ""; echo "Step 2a"; echo ""; tput sgr0;
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y;  # auto-answer Yes
tput setaf 201; tput bold; echo ""; echo "Step 2b"; echo ""; tput sgr0;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
tput setaf 201; tput bold; echo ""; echo "Step 2c"; echo ""; tput sgr0;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";
tput setaf 201; tput bold; echo ""; echo "Step 2d"; echo ""; tput sgr0;
sudo apt-get update;
tput setaf 201; tput bold; echo ""; echo "Step 2e"; echo ""; tput sgr0;
sudo apt-get install docker-ce -y;  # auto-answer Yes


# Replace user path with your user
tput setaf 201; tput bold; echo ""; echo "Step 3, Installing Home Assistant"; echo ""; tput sgr0;
curl -sL https://raw.githubusercontent.com/icanfixitweb/Hassio-Virtual-Machine/master/hassio_install_script/original_script/installer.sh | bash -s -- -d /home/me/docker/hassio
