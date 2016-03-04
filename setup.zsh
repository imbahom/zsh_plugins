#!/usr/bin/env zsh
curDir=$(cd `dirname $0`;pwd)
for file in `ls $curDir`; do
    if [ -d $file ];then
        ln -s imbahom/$file ../$file
    fi
done
echo setup finish
