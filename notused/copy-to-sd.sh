#!/bin/bash

# remount the sd card writable, and copy growroot-disable (disables cloud-init growroot and growpart)
sudo mount -o remount,rw /media/pico/writable
sudo cp /home/pico/pibuntu/local/custom/root/etc/growroot-disabled /media/pico/writable/etc/
sudo chmod 644 /media/pico/writable/etc/growroot-disabled 
echo "should see growroot-disabled"
ls -l /media/pico/writable/etc/growroot-disabled

# copy customization cloud-init for network and users
sudo cp /home/pico/pibuntu/local/custom/root/etc/cloud/cloud.cfg.d/* /media/pico/writable/etc/cloud/cloud.cfg.d/
echo "should see cloud.cfg.d files"
ls -l /media/pico/writable/etc/cloud/cloud.cfg.d/

# copy user-data file for hostname
sudo cp /home/pico/pibuntu/local/custom/system-boot/user-data /media/pico/system-boot/
echo "should see user-data"
ls -l /media/pico/system-boot/user-dataD