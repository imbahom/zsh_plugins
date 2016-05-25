function readLuaSrc(){
    (cd $CODE/lua-5.1.4 && mvim **/*.c */*.h)
}

alias tma="tmux attach"
alias myscp='rsync --progress --partial --av'
# alias netspeed="vnstat -l -i en0"
