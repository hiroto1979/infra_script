#!/bin/bash

PYENV_VER=2.0.3
PYTHON_VER=3.8.6

# pyenv
# https://pyenv.github.io/
# https://github.com/pyenv/pyenv

sudo apt install -y \
    build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev \
    libbz2-dev libreadline-dev libsqlite3-dev libopencv-dev tk-dev git

# pyenv本体のダウンロードとインストール
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# (Option)pyenvのバージョンをv2.0.3に変更
cd ~/.pynev
git checkout v${PYENV_VER}

# pyenv用の設定
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
source ~/.bashrc

# pythonのインストール
pyenv install ${PYTHON_VER}

echo
echo
echo
echo
echo
# pyenv自体のバージョン表示
pyenv -v 
echo
# pyenvでインストールしたがインストールできたかを確認
pyenv versions
