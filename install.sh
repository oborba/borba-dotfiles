#!/bin/sh

set -eu

TMUX_CONF=~/.tmux.conf
BASHRC=~/.bashrc

BackupOldDotFile () {
  if [ -f $1  ]
  then
    echo "Renaming $1 to .old$1"
    mv $1 ~/old.$1
  else
    echo "Don't exists, $1"
  fi
}

BackupOldDotFile $TMUX_CONF
