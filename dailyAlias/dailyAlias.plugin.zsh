
function readLuaSrc(){
    (cd $CODE/lua-5.1.4 && mvim **/*.c */*.h)
}

function makeKindleBook(){
    html=$1
    file=$2
    pid=$$
    (mkdir -p /tmp/$pid  && cd /tmp/$pid && wget -p -k $html)
    
    for htmlfile in `find /tmp/$pid -type f | xargs file | grep HTML | cut -d : -f 1`; do
        basefilename=$(basename $htmlfile)
        suffix=${basefilename##*.}
        if [[ $suffix == "html" ]]; then
            # echo 'kindlegen ' $htmlfile
            kindlegen -verbose $htmlfile
        elif [[ $suffix == "" ]]; then
            newfile=$htmlfile".html"
            cp $htmlfile $newfile
            # echo 'kindlegen ' $newfile
            kindlegen -verbose $newfile
        fi
    done
    find /tmp/$pid -name "*.mobi" -exec mv -v {} $KINDLE_BOOKS/mobis \;
    rm -fr /tmp/$pid
}

alias tma="tmux attach"
alias myscp='rsync --progress --partial --av'
# alias netspeed="vnstat -l -i en0"
