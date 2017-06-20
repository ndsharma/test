#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt -y update
apt-get -y install ansible


# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.15.100  appserver

EOL

ansible-playbook -i "localhost," -c local /vagrant/deploy_java_app.yml
