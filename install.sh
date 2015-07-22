#!/bin/sh

echo "Rename .tmux.conf to .old.tmux.conf"

if [ -f ~/script.txt  ]
then
  echo "File exists, rename it and create link to our new tmux conf"
  mv ~/script.txt ~/old.script.txt
  #ln -s ~/new
else
  echo "Don't exists, so just create a link to new .tmux.conf"
fi
