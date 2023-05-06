#!/usr/bin/env sh
echo "Enter USER GITHUB"
read -p 'User GITHUB | Appuyer sur [Enter]: ' GITHUB_USER </dev/tty
echo "Enter TOKEN GITHUB"
read -p 'TOKEN GITHUB | Appuyer sur [Enter]: ' GITHUB_TOKEN </dev/tty
pip install ansible --user
git config --global user.email "nicos2792@gmail.com"
git config --global user.name "OsmOOs"
git config --global core.sshCommand 'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
git clone https://$GITHUB_USER:$GITHUB_TOKEN@github.com/OsmOOs/iac-vagrant.git
/home/vagrant/.local/bin/ansible-playbook /home/vagrant/my-vagrant-box/provision.yml
