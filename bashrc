alias pro='cd /home/milad/Programming/'
alias gpm='git pull origin master'
alias gs='git status'
alias gd='git diff'
alias ga='git add . '
alias gr='git restore .'
alias gpum='git push origin master'
alias rmco='git config --global --add safe.directory /var/www/html ; rm -rf composer.lock ; rm -rf vendor/pinor ; composer install'
alias ser='php artisan serve'
gcm() {
  if [ $# -gt 0 ]; then
    msg="$*"
  else 
    read -r -p "Commit message: " msg
  fi

  if [ -z "$msg" ]; then
    echo "Please provide a commit message." >&2
    return 1
  fi

  git add . && git commit -m "$msg" && git push origin master
}

