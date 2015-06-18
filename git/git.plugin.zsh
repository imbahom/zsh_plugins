
function gitlistD(){
    git status --short | awk '{if($1=="D") print$2}'
}

function gitlistM(){
    git status --short | awk '{if($1=="M") print$2}'
}

function gitlistUntrackedFile(){
    git status --short | awk '{if($1=="??") print$2}'
}
