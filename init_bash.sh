# init bash

# apt
sudo apt update
sudo apt install -y htop
sudo apt install -y git
sudo apt install -y xclip

# snap
sudo snap install tmux --classic
sudo snap install curl

# docker and docker compose
sudo snap install docker

# python
sudo apt install python3 -y

# golang
sudo snap install go --classic

# php
sudo apt install -y php php-cli php-fpm php-mysql php-xml php-mbstring php-curl


# config
git config pull.rebase false
git config --global core.editor "vi"
git config --global user.email "miladev95@gmail.com"
git config --global user.name "Milad"
cat bashrc >> ~/.bashrc