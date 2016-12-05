function periodik(){
    sudo periodic daily weekly monthly
}

function makeVimwiki(){
    (cd ~/vimwiki && make)
}

function readLuaSrc(){
    (cd $CODE/lua-5.1.4 && mvim **/*.c */*.h)
}

# function makeKindleBook(){
    # html=$1
    # removeAfterGen=$2
    # pid=$$
    # genCmd="kindlegen -verbose"
    # (mkdir -p /tmp/$pid  && cd /tmp/$pid && wget -p -k $html)
    
    # for htmlfile in `find /tmp/$pid -type f | xargs file | grep HTML | cut -d : -f 1`; do
        # echo "processing "$htmlfile
        # basefilename=$(basename $htmlfile)
        # suffix=${basefilename##*.}
        # if [[ $suffix == "html" || $suffix == "htm" ]]; then
            # # echo 'kindlegen ' $htmlfile
            # eval $genCmd $htmlfile
        # elif [[ $suffix == $basefilename ]]; then
            # newfile=$htmlfile".html"
            # cp $htmlfile $newfile
            # # echo 'kindlegen ' $newfile
            # eval $genCmd $newfile
        # fi
    # done
    # find /tmp/$pid -name "*.mobi" -exec mv -v {} $KINDLE_BOOKS/mobis \;
    # if [[ $removeAfterGen == "true" ]]; then
        # rm -fr /tmp/$pid
    # fi
# }

function adb_by_packageName(){
    adb logcat | grep `adb shell ps | grep $1 | cut -c10-15`
}

alias tma="tmux attach"
alias myscp='rsync --progress --partial -av'
alias timestamp='date +%s'
# alias netspeed="vnstat -l -i en0"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc"
