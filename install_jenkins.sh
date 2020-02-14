#!/bin/bash

## install jenkins

IP=$(hostame -I | awk '{print $2}')

echo "START - Install jenkins - "$IP

echo "[1]: install utils & ansible"
apt-get update -qq >/dev/null
apt-get install -qq -y git sshpass wget ansible gnupg2 curl >/dev/null

echo "[2]: Install java & jenkins"
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update -qq >/dev/null
apt-get install -qq -y default-jre jenkins >/dev/null
systemctl enable install_jenkins
systemctl start install_jenkins

echo "[3]: Ansible custom"
sed -i 's/.*pipelining = False.*/pipelining = True/' /etc/ansible/ansible.cfg
sed -i 's/.*allow_world_readable_tmpfiles.*/allow_world_readable_tmpfiles = True/' /etc/ansible/ansible.cfg

echo "[4]: Install docker & docker-composer"
curl -fsSL https://get.docker.com | sh; >/dev/null
usermod -aG docker jenkins # authorize docker for jenkins user
echo "jenkins" | passwd --stdin jenkins
curl -sL "https://github.com/docker/compose/release/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose >/dev/null
chmod +x /usr/local/bin/docker-compose

echo "[5]: Use registry without SSL"
echo "
{
   \"insecure-registries\" : [\"192.168.10.5:5000\"]
}
" >/etc/docker/daemon.json
systemctl daemon-reload
systemctl restart docker

echo "END - install jenkins"
