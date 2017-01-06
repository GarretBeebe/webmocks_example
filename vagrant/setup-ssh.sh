#!/bin/bash

cat /srv/skeleton-rails-project/vagrant/append_authorized_keys > /home/vagrant/.ssh/authorized_keys
# Disable password login
sudo cp /srv/skeleton-rails-project/vagrant/sshd_config /etc/ssh/sshd_config
sudo service ssh restart
