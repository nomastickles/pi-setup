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
ssh -N -L 3000:localhost:3000 user@address -L 9090:localhost:9090 user@address



```

## Tailscale



```bash
sudo curl -fsSL https://tailscale.com/install.sh | sh && sudo tailscale up --ssh

```

<https://tailscale.com/kb/1153/enabling-https>

```sh
sudo openssl pkcs8 -topk8 -nocrypt -in /home/user/xxxx.xxxx.ts.net.key -out /home/user/private.pem

```

Home Assistant Configuration Change:

```yaml
http:
  ssl_certificate: /config/ssl/fullchain.pem
  ssl_key: /config/ssl/private.pem
prometheus:
  requires_auth: false
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
