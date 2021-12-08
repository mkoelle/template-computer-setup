#!/usr/bin/env bash

apt install \
  awscli \
  bash-completion \
  curl \
  docker \
  git \
  golang \
  jq \
  packer \
  thefuck \
  tree \
  zsh \
  # EOL

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws*
