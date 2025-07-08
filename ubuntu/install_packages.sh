
set -e 

apt-get update
apt-get upgrade -Y
apt update
apt upgrade -y

apt install \
    curl \
    thefuck \
    fonts-firacode \
    zsh \
    -y

apt-get install \
    git \
    -y

apt-get autoremove
apt-get autoclean
apt autoremove -y
apt autoclean -y
