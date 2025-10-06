# init ubuntu system

# ubuntu apps
sudo apt update
sudo snap install tmux
sudo apt install -y indicator-multiload
sudo snap install telegram-desktop
sudo snap install audious
sudo apt install -y thunar
sudo snap install curl
sudo apt install -y htop

# golang
sudo snap install goland --classic
sudo snap install golang --classic

# php
sudo apt install -y php php-cli php-fpm php-mysql php-xml php-mbstring php-curl
sudo snap install phpstorm --classic

# chrome
wget -q -O /tmp/google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome.deb