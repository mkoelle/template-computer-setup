#!/usr/bin/env bash

echo "Check if Pip3 is installed."
which -s pip3
if [[ $? != 0 ]] ; then
  echo "Pip3 is not installed. skipping..."
  exit
else
  echo "Pip3 is installed! Updating..."
  pip3 install --upgrade pip
fi

pip3 install \
  aws-sam-translator \
  awsume \
  boto3 \
  pyyaml \
  cfn-lint \
  yamllint \
  # EOL
