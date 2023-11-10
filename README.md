# pi setup

```bash
sudo apt update -y && \
sudo apt install git && \
git clone https://github.com/nomastickles/pi-setup.git && \
cd pi-setup && \
sudo chmod u+x ./pi-setup.sh && \
sudo ./pi-setup.sh
```
# local setup

```bash
docker-compose up -d

docker exec -t --env NATS_URL=nats-server:4222 nats-box nats server check connection

# clean up
docker-compose down --remove-orphans

```


## Tailscale

```bash
curl -fsSL https://tailscale.com/install.sh | sh && sudo tailscale up --ssh
```

## Hardware

```bash
# disable bluetooth && add enable power button
sudo su && \
sudo echo "dtoverlay=disable-bt" >> /boot/config.txt && \
sudo echo "dtoverlay=gpio-shutdown" >> /boot/config.txt && \
sudo reboot
```

