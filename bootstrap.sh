#!/usr/bin/env bash

Update () {
    echo "-- Update packages --"
    sudo apt-get update
    sudo apt-get upgrade
}
Update

sudo locale-gen de_DE.UTF-8
sudo locale-gen de_CH.UTF-8
sudo locale-gen fr_FR.UTF-8
sudo locale-gen fr_CH.UTF-8
sudo locale-gen it_IT.UTF-8
sudo locale-gen it_CH.UTF-8
sudo locale-gen en_US.UTF-8
sudo locale-gen en_GB.UTF-8
sudo update-locale LANG=en_US.UTF-8 LC_MESSAGES=POSIX

echo "-- Install tools and helpers --"
sudo apt-get install -y --force-yes language-pack-en-base python-software-properties vim nano htop curl git npm subversion

echo "-- Install NodeJS --"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

Update

