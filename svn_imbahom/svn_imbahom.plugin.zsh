alias sst="svn st | less"
alias scm="svn ci -m "

function svndquest(){
    svn status | awk '{if($1=="?") print$2}' | xargs rm -fr
}
function svndbang(){
    svn status | awk '{if($1=="!") print$2}' | xargs svn delete
}
function svnaquest(){
    svn status | awk '{if($1=="?") print$2}' | xargs svn add
}
function svncm(){
    svn ci -m $1 `svn status | awk '{if($1=="M") print$2}'`
}
function svnca(){
    svn ci -m $1 `svn status | awk '{if($1=="A") print$2}'`
}
function svncd(){
    svn ci -m $1 `svn status | awk '{if($1=="D") print$2}'`
}
function svnrevert(){
    svn status | awk '{if($1=="M") print$2}' | xargs svn revert
}
function svnresolvedconflict(){
    svn status | awk '{if($1=="C") print$2}'
    count=`svn status | awk '{if($1=="C") print$2}' | wc -l`
    if [ $count -ne 0 ];then
        echo "Did you resolved these conflict? Be Careful!!! (yY/nN)"
        read line
        if [ "$line" = Y ] || [ "$line" = y ];then
            svn status | awk '{if($1=="C") print$2}' | xargs svn resolved
        elif [ "$line" = N ] || [ "$line" = n ];then
            echo "operate canceled"
            return
        else
            echo "bad input!"
            return
        fi
    else
        echo "Dont have any conflicts"
    fi
}
