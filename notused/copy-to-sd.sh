#!/bin/bash

# remount the sd card writable, and copy growroot-disable (disables cloud-init growroot and growpart)
sudo mount -o remount,rw /media/commodore/writable
sudo cp /home/commodore/pibuntu/local/custom/root/etc/growroot-disabled /media/commodore/writable/etc/
sudo chmod 644 /media/commodore/writable/etc/growroot-disabled 
echo "should see growroot-disabled"
ls -l /media/commodore/writable/etc/growroot-disabled

# copy customization cloud-init for network and users
sudo cp /home/commodore/pibuntu/local/custom/root/etc/cloud/cloud.cfg.d/* /media/commodore/writable/etc/cloud/cloud.cfg.d/
echo "should see cloud.cfg.d files"
ls -l /media/commodore/writable/etc/cloud/cloud.cfg.d/

# copy user-data file for hostname
sudo cp /home/commodore/pibuntu/local/custom/system-boot/user-data /media/commodore/system-boot/
echo "should see user-data"
ls -l /media/commodore/system-boot/user-dataD