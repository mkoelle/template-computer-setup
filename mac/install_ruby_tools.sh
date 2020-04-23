#!/usr/bin/env bash

echo "Check if Ruby is installed."
which -s ruby
if [[ $? != 0 ]] ; then
  echo "Ruby is not installed. Installing..."
  curl -sSL https://get.rvm.io | bash -s stable --ruby
else
  echo "Ruby is installed! Updating..."
  rvm get stable --auto-dotfiles
fi

gem install \
  cfn-nag \
  # EOL
