alias pro='cd /home/milad/Programming/'
alias gpm='git pull origin master'
alias gs='git status'
alias gp='git push'
alias gd='git diff'
alias ga='git add . '
alias gr='git restore .'
alias gpum='git push origin master'
alias rmco='git config --global --add safe.directory /var/www/html ; rm -rf composer.lock ; rm -rf vendor/pinor ; composer install'
alias ser='php artisan serve'
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

