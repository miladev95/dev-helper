# init ubuntu system

# config
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop']"
dconf load / < ./gnome_settings.txt # copy keyboard shortcuts and settings

# apt
sudo apt update
sudo apt install -y indicator-multiload
sudo apt install -y thunar
sudo apt install -y htop
sudo apt install -y git

# snap
sudo snap install tmux
sudo snap install telegram-desktop
sudo snap install audious
sudo snap install curl
sudo snap install postman

# docker
sudo snap install docker
sudo apt install docker-compose-plugin -y

# python
sudo apt install python3 -y
sudo snap install pycharm-professional --classic

# golang
sudo snap install go --classic
sudo snap install goland --classic

# php
sudo apt install -y php php-cli php-fpm php-mysql php-xml php-mbstring php-curl
sudo snap install phpstorm --classic

# chrome
wget -q -O /tmp/google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome.deb

# config
git config --global core.editor "vim"
cat bashrc >> ~/.bashrc