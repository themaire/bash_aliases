#!/bin/bash

# Auto adding the aliases to the end of your ~/.barshrc config file.

<<<<<<< HEAD
if [ ! -e "~/.bash_aliases" ] # Test if this forlder exists.
then
  echo "Create ~/.bash_aliases folder."
  mkdir ~/bash_aliases
=======
aliases="/home/$(whoami)/.bash_aliases"
>>>>>>> 5dc3f05 (The script was wront, createad a ~/.bash_aliases forlder instead of a file... :-( .)

if [ ! -e $aliases ] # Test if this forlder exists.
then
  echo "Create ~/.bash_aliases file."
  touch $aliases
else
  rm $aliases
  touch $aliases
fi

for i in ./*aliases
do
  echo "# $i" >> $aliases
  echo "$(cat $i)" >> $aliases
  echo "" >> $aliases
  echo "$i added."
done

echo "Enjoy aliases!"
