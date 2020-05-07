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
  brew cask upgrade
fi

brew install \
  awscli \
  curl \
  git \
  golang \
  jq \
  packer \
  pipenv \
  python \
  saml2aws \
  saml2aws-auto \
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
  firefox \
  fly \
  google-chrome \
  powershell \
  visual-studio-code \
  vlc \
  # EOL
