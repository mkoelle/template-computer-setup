# Create a directory for custom tools like hl and zoxide to live in
mkdir -p "$HOME/.local/bin"

curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

git clone https://github.com/spaceship-prompt/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt --depth=1
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme

git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting --depth=1
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth=1

# fast node manager instead of NVM
curl -fsSL https://fnm.vercel.app/install | bash

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf ./aws*

# HL for human readable logs
curl -sSfL https://github.com/pamburus/hl/releases/latest/download/hl-linux-x86_64-musl.tar.gz | tar xz
mv hl "$HOME/.local/bin"

# atuin for better terminal history
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

# Zoxide for terminal nav
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

curl "https://go.microsoft.com/fwlink/?LinkID=760868" -o "vscode.deb"
sudo apt install ./vscode.deb
#!/bin/bash
echo "Press any key to continue..."
read -n 1
echo "Continuing..."
rm -rf ./vscode*
