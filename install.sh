#!/bin/sh

set -u

source dotfiles/.script_helpers.sh

DOT_FILES_TO_BACKUP=$(ls -a dotfiles/ | grep .[a-z]\w*)
CURRENT_PATH=`pwd`
DATE=`date +%Y%m%d%H%M%S`

puts_notice "Create Backup"

BackupOldDotFile () {
  if [ -f $HOME/$1  ]; then
    if [ -f $CURRENT_PATH/backups/$1 ]
    then
      echo_blue "=== Renaming $1 to $1.$DATE ==="
      mv $HOME/$1 $HOME/$1.$DATE
    else
      echo_blue "=== Backup your version of $1 in backups/ ==="
      mv $HOME/$1 $CURRENT_PATH/backups
    fi
  else
    echo "$1 Don't exists yet"
  fi
}

for i in $DOT_FILES_TO_BACKUP
do
  BackupOldDotFile "$i"
done


CreateLinkTo() {
  echo_green "Creating new $1"
  $(cd $HOME && ln -s $CURRENT_PATH/dotfiles/$1 $1)
}

puts_success "Creating new dotfiles"

for i in $DOT_FILES_TO_BACKUP
do
 CreateLinkTo "$i"
done

echo ""
echo_yellow "Set files to ignore..."
echo ""

git config --global core.excludesfile ~/.gitignore_global

