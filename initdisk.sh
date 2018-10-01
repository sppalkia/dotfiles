#!/bin/bash

set -x 

# Mount the ephemeral storage (NVMe SSD instance storage)
mkfs -t ext4 /dev/nvme0n1
mkdir -p /mnt/localssd
mount -t ext4 /dev/nvme0n1 /mnt/localssd
echo "/dev/nvme0n1 /mnt/localssd ext4 defaults,noatime 0 0" | tee -a /etc/fstab
chmod 777 /mnt/localssd

