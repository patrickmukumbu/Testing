#!/bin/bash
#This script allows to create a user ddd and access a linux instance without the use of a keypair
echo $(curl -s http://169.254.169.254/latest/meta-data/public-hostname) | xargs sudo hostname
useradd -m ddd
echo -e "academy\nacademy" | passwd ddd
usermod -aG sudo ddd
usermod -aG wheel ddd
#change this to yes --> /etc/ssh/sshd_config  line PasswordAuthentication no
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
echo -e "/root/.ssh/id_rsa\nacademy\nacademy" | ssh-keygen -t rsa
cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
/etc/init.d/ssh restart



wget -O /tmp/ssmagent.deb	https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_amd64/amazon-ssm-agent.deb
dpkg -i /tmp/ssmagent.deb







