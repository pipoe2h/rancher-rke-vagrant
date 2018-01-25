#!/usr/bin/env bash

docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/server:preview