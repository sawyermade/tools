# Nvidia Linux Exclusive Process

## Clone & Install Ubuntu / Debian
```bash
# Set Exclusive Process at Reboot
echo "@reboot nvidia-smi -c EXCLUSIVE_PROCESS" | sudo tee -a /var/spool/cron/crontabs/root
```
