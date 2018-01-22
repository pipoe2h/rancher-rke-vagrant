#!/usr/bin/env bash

VAGRANT_USER="vagrant"
RKE_URL="https://api.github.com/repos/rancher/rke/releases/latest"
RKE_PATH="/usr/local/bin"
RKE_BINARY="rke"

wget $(curl -s $RKE_URL | grep browser_download_url | cut -d '"' -f 4 | awk '/rke_linux-amd64/{print}') -O $RKE_PATH/$RKE_BINARY
chmod +x $RKE_PATH/$RKE_BINARY

echo 'rke up!'
su $VAGRANT_USER -c '/usr/local/bin/rke up --config /vagrant/cluster.yaml'