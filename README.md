# pi setup

## Docker
```sh
sudo chmod u+x docker-setup.sh && sudo ./docker-setup.sh
```

## Hardware

```sh
# disable bluetooth
sudo echo "dtoverlay=disable-bt" >> /boot/config.txt
# power button
sudo echo "dtoverlay=gpio-shutdown" >> /boot/config.txt
```

## Tailscale

```sh
curl -fsSL https://tailscale.com/install.sh | sh && sudo tailscale up --ssh
```


