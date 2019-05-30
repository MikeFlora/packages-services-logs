#! /bin/bash

SEPARATOR="================================"
SEPARATOR2="--------------------------------"

# Get the status of the following services: ntpd, sshd and snmpd
echo $SEPARATOR
echo "Service Status"
echo $SEPARATOR

echo "Service: ntpd"
echo $SEPARATOR2
systemctl status ntpd
echo $SEPARATOR2
echo

echo "Service: sshd"
echo $SEPARATOR2
systemctl status sshd
echo $SEPARATOR2
echo

echo "Service: snmpd"
echo $SEPARATOR2
systemctl status snmpd
echo $SEPARATOR2
echo

# Install the cowsay application
echo $SEPARATOR
echo "Installing the 'cowsay' application"
echo $SEPARATOR
yum install cowsay -y
echo

# Show information about the cowsay application
echo $SEPARATOR
echo "Information about the 'cowsay' application"
echo $SEPARATOR
yum info cowsay
echo

# Show the last 10 lines of the systemd journal log
echo $SEPARATOR
echo "systemd journal log"
echo $SEPARATOR
journalctl -n10 --no-pager

