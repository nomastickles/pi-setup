# pi setup

```bash
sudo apt update -y && \
sudo apt install git && \
git clone https://github.com/nomastickles/pi-setup.git && \
cd pi-setup && \
sudo chmod u+x pi-setup.sh && sudo ./pi-setup.sh
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

