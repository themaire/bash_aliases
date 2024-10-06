#!/bin/bash

# Auto adding the aliases to the end of your ~/.barshrc config file.

if [ ! -e "~/bash_aliases" ] # Test if this forlder exists.
then
  echo "Create ~/bash_aliases folder."
  mkdir ~/bash_aliases

  for i in ./*aliases
  do
    cp $i ~/bash_aliases
    echo "$i added."
  done
fi

echo "Enjoy aliases!"
