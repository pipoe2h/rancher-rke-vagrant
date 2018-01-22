#!/usr/bin/env bash

docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:preview