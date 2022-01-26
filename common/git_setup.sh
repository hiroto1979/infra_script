#!/bin/bash

# git は PPA (Personal Package Archive) で最新版のビルドを提供されている。
# Git stable releases : "Ubuntu Git Maintainers" team
# https://launchpad.net/~git-core/+archive/ubuntu/ppa
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git

git config --global user.name "hiroto"
git config --global user.email "hiroto@linking-pass.net"
git config --global core.editor vim
