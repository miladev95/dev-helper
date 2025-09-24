alias pro='cd /home/milad/Programming/'
alias au='sudo apt update'
alias sb='source ~/.bashrc'

alias gpm='git pull origin master'
alias gs='git status'
alias gp='git push'
alias gd='git diff'
alias ga='git add . '
alias gr='git restore .'
alias gpum='git push origin master'

alias rmco='git config --global --add safe.directory /var/www/html ; rm -rf composer.lock ; rm -rf vendor/pinor ; composer install'
alias ser='php artisan serve'
alias phpsb='phpstorm . > /dev/null 2>&1 &'

alias gomt='go mod tidy'
alias gorm='go run main.go'

gcm() {
  msg="$*"
  git add . && git commit -m "$msg" && git push origin master
}

gc() {
  msg="$*"
  git add . && git commit -m "$msg"
}
lmmo() {
  local name="$1"
  php artisan make:model "$name" -m
}
lmmi() {
  local name="$1"
  php artisan make:migration "$name"
}
lmreq() {
  local name="$1"
  php artisan make:request "$name"
}
lmres() {
  local name="$1"
  php artisan make:resource "$name"
}
lmj() {
  local name="$1"
  php artisan make:job "$name"
}
lmc() {
  local name="$1"
  php artisan make:controller "$name"
}
glog() {
  local count="${1:-5}"
  git log -"${count}" --oneline --decorate
}
glogf() {
  local count="${1:-5}"
  git log -"${count}" --pretty=format:"%C(yellow)%h%Creset %C(red)%d%Creset %s %C(green)— %an %C(cyan)%ad%Creset"
}

