#!/bin/bash
echo "What will you do?"
read todo
echo "Due date?"
read due

echo "[$due] $todo" >> $HOME/todo/todo.txt
