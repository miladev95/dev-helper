# init ubuntu system

# config
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop','org.gnome.TextEditor.desktop']"
dconf load / < ./gnome_settings.txt # copy keyboard shortcuts and settings

# chrome
wget -q -O /tmp/google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome.deb
gsettings set org.gnome.shell favorite-apps "[
  'org.gnome.Nautilus.desktop',
  'org.gnome.Terminal.desktop',
  'org.gnome.TextEditor.desktop',
  'google-chrome.desktop'
]"

# apt
sudo apt update
sudo apt install -y indicator-multiload
sudo apt install -y thunar
sudo apt install -y htop
sudo apt install -y git
sudo apt install -y xclip

# snap
sudo snap install tmux --classic
sudo snap install telegram-desktop
sudo snap install audacious
sudo snap install curl
sudo snap install postman

# docker and docker compose
sudo snap install docker

# python
sudo apt install python3 -y
sudo snap install pycharm-professional --classic
gsettings set org.gnome.shell favorite-apps "[
  'org.gnome.Nautilus.desktop',
  'org.gnome.Terminal.desktop',
  'org.gnome.TextEditor.desktop',
  'google-chrome.desktop',
  'pycharm-professional_pycharm-professional.desktop',
]"

# golang
sudo snap install go --classic
sudo snap install goland --classic
gsettings set org.gnome.shell favorite-apps "[
  'org.gnome.Nautilus.desktop',
  'org.gnome.Terminal.desktop',
  'org.gnome.TextEditor.desktop',
  'google-chrome.desktop',
  'pycharm-professional_pycharm-professional.desktop',
  'goland_goland.desktop',
]"

# php
sudo apt install -y php php-cli php-fpm php-mysql php-xml php-mbstring php-curl
sudo snap install phpstorm --classic
gsettings set org.gnome.shell favorite-apps "[
  'org.gnome.Nautilus.desktop',
  'org.gnome.Terminal.desktop',
  'org.gnome.TextEditor.desktop',
  'google-chrome.desktop',
  'pycharm-professional_pycharm-professional.desktop',
  'goland_goland.desktop',
  'phpstorm_phpstorm.desktop',
]"

# config
git config pull.rebase false
git config --global core.editor "vi"
git config --global user.email "miladev95@gmail.com"
git config --global user.name "Milad"
cat bashrc >> ~/.bashrc