#!/bin/bash

## install gitlab

IP=$(hostname -I | awk '{print $2}')

echo "START - Install gitlab - "$IP

echo "[1]: Install gitlab"
apt-get update -qq >/dev/null
apt-get install -qq -y nano git wget curl >/dev/null
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
apt-get update -qq >/dev/null
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
apt-get install -qq -y gitlab-ce
gitlab-ctl reconfigure

echo "END - Install gitlab"
