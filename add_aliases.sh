#!/bin/bash

# Auto adding the aliases to the end of your ~/.barshrc config file.

aliases="/home/$(whoami)/.bash_aliases"

if [ -e $aliases ] # Test if this forlder exists.
then
  rm $aliases
fi

echo "(Re)Create ~/.bash_aliases file."
touch $aliases

for i in ./*aliases
do
  echo "# $i" >> $aliases
  echo "$(cat $i)" >> $aliases
  echo "" >> $aliases
  echo "$i added."
done

echo "Enjoy aliases!"
