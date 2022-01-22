#!/bin/bash

JULIA_VER=1.7.0

# officialとしては、Platform Specific Instructions for Official Binariesにインストール手順の記載あり。
# https://julialang.org/downloads/platform/#linux_and_freebsd

cd /opt
sudo wget https://julialang-s3.julialang.org/bin/linux/x64/`echo ${JULIA_VER} | awk -F. '{ print $1"."$2 }'`/julia-${JULIA_VER}-linux-x86_64.tar.gz
sudo tar zxvf julia-${JULIA_VER}-linux-x86_64.tar.gz
sudo rm julia-${JULIA_VER}-linux-x86_64.tar.gz

echo '' >> ~/.bashrc
echo 'export PATH=$PATH:/opt/julia-'"${JULIA_VER}"'/bin' >> ~/.bashrc
source ~/.bashrc

julia