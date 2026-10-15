#!/system/bin/sh
#
# Copyright (c) 2013, NVIDIA CORPORATION. All rights reserved.
#
# initialise and set zram swapspace

disksize=$(cat /sys/class/block/zram0/disksize)
# if uninitialised, initialise zram with disksize = 1GB
if [ $disksize -eq 0 ]
then
    echo 210M > /sys/class/block/zram0/disksize
fi
mkswap /dev/block/zram0
swapon /dev/block/zram0
