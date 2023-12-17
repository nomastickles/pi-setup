#!/bin/bash

# https://docs.docker.com/engine/install/raspberry-pi-os/

for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/raspbian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Set up Docker's Apt repository:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/raspbian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

sudo apt-get update

# latest version
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt-get install -y docker.io jq

sudo docker run hello-world

# Download docker compose stable
sudo curl -L "https://github.com/docker/compose/releases/download/v2.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable to binary
sudo chmod +x /usr/local/bin/docker-compose

# Check version
docker-compose --version

#  docker-compose down --remove-orphans

# set Docker and its related packages to hold so they are only upgraded on planned upgrades.
# to upgrade Docker run apt-mark unhold, upgrade the packages, and hold them again
sudo apt-mark hold docker containerd

# boom
cd ./docker && sudo docker-compose up -d

# test node exporter
curl http://localhost:9100/metrics

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
sudo cp $HOME/.local/bin/lazydocker /usr/local/bin

sudo apt install libudev-dev -y
git clone https://github.com/todbot/blink1-tool.git
cd ./blink1-tool && make
./blink1-tool --add_udev_rule
sudo cp blink1-tool /usr/local/bin
blink1-tool --millis 2000 -b 100 --green

# sudo lazydocker
