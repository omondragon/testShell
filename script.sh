#!/bin/bash

echo "configurando el resolv.conf con cat"
cat <<TEST> /etc/resolv.conf
nameserver 8.8.8.8
TEST

echo "instalando un server vsftpd"
sudo apt-get install vsftpd -y

echo “Modificando vsftpd.conf con sed”
sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf
sudo service vsftpd restart

echo "configurando ip forwarding con echo en el server"
sudo echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf

