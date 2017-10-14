#!/bin/bash

gitfile=~/.gitconfig

if [ $# -ne 2 ]; then
    echo $0: use params: name email
    exit 1
fi

cp .bash_profile ~/.bash_profile
cp .bash_prompt ~/.bash_prompt
cp .gitconfig ~/.gitconfig

echo "  name = $1" >> $gitfile
echo "  email = $2" >> $gitfile

source ~/.bash_profile
