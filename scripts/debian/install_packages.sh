
set -ex 

apt-get update
apt-get upgrade
apt update
apt upgrade -y

apt install \
    curl \
    thefuck \
    fonts-firacode \
    tre-command \
    zsh \
    -y

apt-get install \
    git \
    yq \
    jq \
    -y

# snap refresh
# snap install kubectl --classic

apt-get autoremove
apt-get autoclean
apt autoremove -y
apt autoclean -y
