#!/bin/bash
shopt -s expand_aliases
alias detail='ls -l'
detail /home/yy/shell-script/*.sh
echo 
directory=/home/yy/shell-script/
prefix=*.sh
alias vardetail="ls -l $directory$prefix"
vardetail
echo "Deleting all aliases:"
unalias -a
detail 
vardetail
