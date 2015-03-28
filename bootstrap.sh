#!/usr/bin/env bash

mv /etc/environment /etc/environment.bkp
cp /vagrant/environment.artifactory /etc/environment

mv /etc/apt/sources.list /etc/apt/sources.list.bkp
cp /vagrant/sources.list /etc/apt/
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 3B4FE6ACC0B21F32 

wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -


apt-get update
#apt-get -y update
apt-get install -y vim unzip curl

wget http://10.0.0.20:8081/artifactory/ext-release-local/sonarqube-4.5.4.zip
unzip sonarqube-4.5.4.zip  -d /opt/

apt-get install -y git openjdk-7-jre openjdk-7-jdk jenkins
apt-get -f install
#apt-get install -y ddclient

# apt-get install -y apache2
# if ! [ -L /var/www ]; then
#   rm -rf /var/www
#   ln -fs /vagrant /var/www
# fi