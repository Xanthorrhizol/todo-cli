#!/bin/bash
cat -n $HOME/todo/todo.txt
echo ""
echo "Which line of task did you done?"
read line
echo "$(cat $HOME/todo/todo.txt | head -$line | tail -1) [$(date)]" >> $HOME/todo/done.txt
sed -i "${line}d" $HOME/todo/todo.txt
