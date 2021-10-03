#!/bin/bash
if [ ! -d $HOME/todo ]; then
  mkdir $HOME/todo
fi
if [ ! -d $HOME/.local/bin ]; then
  mkdir -p $HOME/.local/bin
fi
cp ./add-todo.sh $HOME/.local/bin/add-todo
cp ./end-todo.sh $HOME/.local/bin/end-todo
cp ./list-todo.sh $HOME/.local/bin/list-todo
shell=$(echo $SHELL | cut -d '/' -f 3)
if [ $(echo $PATH | grep "$HOME/.local/bin" | wc -l) -ne 1 ]; then
  echo 'export PATH=$PATH:$HOME/.local/bin' >> $HOME/.${shell}rc
fi
source $HOME/.${shell}rc
