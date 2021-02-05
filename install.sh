#!/bin/bash
PATH_BASHRC=~/.bashrc
LOCAL_BASHRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LOCAL_BASHRC="$LOCAL_BASHRC/bashrc"
OLD="_old"
cp $PATH_BASHRC "$PATH_BASHRC$OLD"
ln -f -s $LOCAL_BASHRC $PATH_BASHRC
echo "ln -s $LOCAL_BASHRC $PATH_BASHRC"

PATH_VIMRC=~/.vimrc
LOCAL_VIMRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LOCAL_VIMRC="$LOCAL_VIMRC/vimrc"

ln -f -s $LOCAL_VIMRC $PATH_VIMRC
echo "ln -s $LOCAL_VIMRC $PATH_VIMRC"
