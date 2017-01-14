#!/bin/bash

cat /srv/webmocks-example-project/vagrant/append_authorized_keys > /home/vagrant/.ssh/authorized_keys
# Disable password login
sudo cp /srv/webmocks-example-project/vagrant/sshd_config /etc/ssh/sshd_config
sudo service ssh restart
