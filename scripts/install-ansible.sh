#!/usr/bin/env sh
echo "Enter USER GITHUB: "
read -p GITHUB_USER
echo "Enter TOKEN GITHUB: "
read -p GITHUB_TOKEN
pip install ansible --user
git config --global user.email "nicos2792@gmail.com"
git config --global user.name "OsmOOs"
git config --global core.sshCommand 'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
git clone https://$GITHUB_USER:$GITHUB_TOKEN@github.com/OsmOOs/iac-vagrant.git
/home/vagrant/.local/bin/ansible-playbook /home/vagrant/my-vagrant-box/provision.yml