#!/bin/sh

set -u

DOT_FILES_TO_BACKUP=$(ls -a dotfiles/ | grep .[a-z]\w*)

DATE=`date +%Y%m%d%H%M%S`

BackupOldDotFile () {
  if [ -f ~/$1  ]
  then
    echo "Renaming $1 to $1.$DATE"
    mv $HOME/$1 $HOME/$1.$DATE
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
  echo "Creating link to $1"
  $(cd $HOME && ln -s $CURRENT_PATH/dotfiles/$1 $1)
  ls -la $HOME | grep $1
}

for i in $DOT_FILES_TO_BACKUP
do
 CreateLinkTo "$i"
done

for i in $DOT_FILES_TO_BACKUP
do
 source ~/"$i"
done


