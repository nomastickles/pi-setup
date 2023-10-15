# pi setup

```bash
sudo apt update && sudo apt install git
```

## Docker
```bash
sudo chmod u+x docker-setup.sh && sudo ./docker-setup.sh
```

## Tailscale

```bash
curl -fsSL https://tailscale.com/install.sh | sh && sudo tailscale up --ssh
```

## Hardware

```bash
# disable bluetooth
sudo echo "dtoverlay=disable-bt" >> /boot/config.txt
# power button
sudo echo "dtoverlay=gpio-shutdown" >> /boot/config.txt
```

