#!/bin/bash

PYTHON_VER=3.8.12

# 自前でビルドする手順
# https://www.python.jp/install/ubuntu/index.htmlを参考に手順を構成した。


sudo apt update
sudo apt install build-essential libbz2-dev libdb-dev \
  libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
  libncursesw5-dev libsqlite3-dev libssl-dev zlib1g-dev uuid-dev tk-dev

# Pythonのソースコードは以下のサイトにある。
# https://www.python.org/downloads/source/
# そしてファイルが存在するURLのフォームは、原則以下の通りとなっている。
# https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tar.xz

cd
curl -O https://www.python.org/ftp/python/${PYTHON_VER}/Python-${PYTHON_VER}.tar.xz
tar xJf Python-${PYTHON_VER}.tar.xz

cd Python-${PYTHON_VER}
./configure
make
sudo make install

echo 
echo 
echo 
echo 
echo 
echo 
python3 --version
