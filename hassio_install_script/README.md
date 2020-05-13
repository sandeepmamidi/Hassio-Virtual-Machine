## Terminal Script to Install Home Assistant (with Hassio Supervisor)


### Automated Script

The command below will execute the [`install_hassio.sh`](https://github.com/icanfixitweb/Hassio-Virtual-Machine/blob/master/hassio_install_script/install_hassio.sh) script to install Home Assistant and its dependencies automatically.

```
sudo su
wget -O - https://raw.githubusercontent.com/icanfixitweb/Hassio-Virtual-Machine/master/hassio_install_script/install_hassio.sh | bash
```
***

### Manual Installation

##### Install dependencies
* `sudo apt-get install bash jq curl avahi-daemon dbus software-properties-common apparmor-utils`
 
##### Install docker
* `sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y`
* `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
* `sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`
* `sudo apt-get update`
* `sudo apt-get install docker-ce -y`

##### Install Home Assistant
* `curl -sL https://raw.githubusercontent.com/icanfixitweb/Hassio-Virtual-Machine/master/hassio_install_script/original_script/installer.sh | bash -s -- -d /home/me/docker/hassio`

> This last command will install Home Assistant in `/home/me/docker/hassio`. Replace `me` with your username or replace the whole path with your preferred path. 

***

Once the installation is completed go to `http://hassio.local:8123/` or `http://yourIPaddress:8123/` (replace `yourIPaddress` with your actual IP address) from your web browser to access your new Home Assistant installation.
