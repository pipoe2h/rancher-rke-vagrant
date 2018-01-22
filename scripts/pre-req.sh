#!/usr/bin/env bash

VAGRANT_USER="vagrant"
VAGRANT_PUB_KEY="https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub"

apt-get update && apt-get dist-upgrade -y

echo `wget $VAGRANT_PUB_KEY`
key=`echo $VAGRANT_PUB_KEY | sed 's_.*/__' `
cat $key >> /home/$VAGRANT_USER/.ssh/authorized_keys
rm $key