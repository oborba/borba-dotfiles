#!/bin/sh

set -eu

TMUX_CONF=~/.tmux.conf
BASHRC=~/.bashrc
TESTE=~/teste_um.txt
TESTE_DOIS=~/teste_dois.txt

DOT_FILES_TO_BACKUP="$TESTE $TESTE_DOIS"

BackupOldDotFile () {
  if [ -f $1  ]
  then
    echo "Renaming $1 to $1.old"
    mv $1 $1.old
  else
    echo "Don't exists, $1"
  fi
}

for i in $DOT_FILES_TO_BACKUP
do
  BackupOldDotFile "$i"
done

