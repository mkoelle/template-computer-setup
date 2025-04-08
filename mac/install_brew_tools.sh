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
  atuin \
  awscli \
  bash-completion \
  curl \
  docker-completion \
  fnm \
  font-fira-code \
  fzf \
  git \
  golang \
  gradle \
  jabba \
  jq \
  nvm \
  pamburus/tap/hl \
  pipenv \
  pyenv \
  python \
  sonar-scanner \
  starship \
  thefuck \
  tre-command \
  yq \
  zoxide \
  zsh \
  # EOL

brew cask install \
  bruno \
  docker \
  firefox \
  google-chrome \
  postman \
  powershell \
  rectangle \
  visual-studio-code \
  vlc \
  # EOL
