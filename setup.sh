#!/usr/bin/env bash

# https://stackoverflow.com/questions/8880603/loop-through-an-array-of-strings-in-bash/51794732#51794732

arr=('../.bashrc' '../.nanorc' '../.wgetrc')

for i in ${!arr[@]}
do
    mv -v "${arr[i]}"{,.bak} 2>/dev/null || true
done

stow -vt ~/ bash/ bin/ htop/ nano/ tmux/ WgetCurl/
