# pi setup

```bash
sudo apt update -y && \
sudo apt install git && \
git clone https://github.com/nomastickles/pi-setup.git && \
cd pi-setup && \
sudo chmod u+x ./pi-setup.sh && \
sudo ./pi-setup.sh
```

## Test nats

```bash

sudo docker exec -t --env NATS_URL=nats-server:4222 nats-box nats server check

## remove everything

sudo docker-compose down --remove-orphans

```

## Metrics

node exporter issue https://github.com/prometheus/node_exporter/issues/2849

```bash
ssh -N -L 3000:localhost:3000 user@192.168.88.88 -L 9090:localhost:9090 user@192.168.88.88



```

## Tailscale

<https://tailscale.com/kb/1153/enabling-https>

```bash
sudo curl -fsSL https://tailscale.com/install.sh | sh && sudo tailscale up --ssh
```

## Hardware Changes

```bash
# disable bluetooth && add enable power button
sudo su && \
sudo echo "dtoverlay=disable-bt" >> /boot/config.txt && \
sudo echo "dtoverlay=gpio-shutdown" >> /boot/config.txt && \
sudo reboot
```


## Wifi

```bash
sudo apt-get install -y aircrack-ng airgraph-ng
sudo airmon-ng
sudo airmon-ng start wlan1
sudo airmon-ng

sudo airodump-ng wlan1mon --band abg -w dualband --ignore-negative-one --output-format csv --ignore-negative-one --manufacturer

sudo airgraph-ng -i dualband-02.csv -o dualband2.png -g CAPR

```
