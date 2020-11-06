#!/usr/bin/env bash

echo "Check if Homebrew is installed."
which -s brew
if [[ $? != 0 ]] ; then
  echo "Homebrew is not installed. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew is installed! Updating..."
  brew update
  brew upgrade
  brew upgrade --cask
fi

brew tap versent/homebrew-taps

brew install \
  awscli \
  bash-completion \
  curl \
  docker \
  docker-completion \
  git \
  golang \
  gradle \
  jq \
  nvm \
  packer \
  pyenv \
  pipenv \
  python \
  sonar-scanner \
  starship \
  telnet \
  terraform \
  thefuck \
  tree \
  yq \
  zsh \
  # EOL

brew cask install \
  docker \
  firefox \
  google-chrome \
  postman \
  powershell \
  visual-studio-code \
  vlc \
  # EOL
