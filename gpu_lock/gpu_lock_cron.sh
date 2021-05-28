#!/bin/bash
echo "@reboot nvidia-smi -c EXCLUSIVE_PROCESS" | sudo tee -a /var/spool/cron/crontabs/root
