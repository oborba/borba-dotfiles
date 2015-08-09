#!/bin/sh

set -u

TMUX_CONF=~/.tmux.conf
BASHRC=~/.bashrc

DOT_FILES_TO_BACKUP="$TMUX_CONF $BASHRC"

DATE=`date +%Y%m%d%H%M%S`

BackupOldDotFile () {
  if [ -f $1  ]
  then
    echo "Renaming $1 to $1.$DATE"
    mv $1 $1.$DATE
  else
    echo "Don't exists, $1"
  fi
}

for i in $DOT_FILES_TO_BACKUP
do
  BackupOldDotFile "$i"
done

CURRENT_PATH=`pwd`

CreateLinkTo() {
  cd ~/
  ln -s $CURRENT_PATH/dotfiles/$1 $1
  cd -
}

CreateLinkTo .tmux.conf
CreateLinkTo .bashrc

source $TMUX_CONF
source $BASHRC
