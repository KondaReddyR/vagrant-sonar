#!/usr/bin/env bash

mv /etc/environment /etc/environment.bkp
cp /vagrant/environment.artifactory /etc/environment

mv /etc/apt/sources.list /etc/apt/sources.list.bkp
cp /vagrant/sources.list /etc/apt/
apt-get update


# apt-get install -y apache2
# if ! [ -L /var/www ]; then
#   rm -rf /var/www
#   ln -fs /vagrant /var/www
# fi