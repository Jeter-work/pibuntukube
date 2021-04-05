#!/bin/bash
sudo -i
vi /etc/network/interfaces.d/50-cloud-init.cfg
shutdown -P 2
systemctl restart avahi-daemon.service
ifdown eth0; ifup eth0
