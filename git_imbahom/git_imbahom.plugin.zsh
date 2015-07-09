
function gitlistD(){
    git status --short | awk '{if($1=="D") print$2}'
}

function gitlistM(){
    git status --short | awk '{if($1=="M") print$2}'
}

function gitlistUntrackedFile(){
    git status --short | awk '{if($1=="??") print$2}'
} 

function gitlistModifiedNewFile(){
    git status --short | awk '{if($1=="AM" print$2}'
}

function gitlistRenamed(){
    git status --short | awk '{if($1=="R" print$2}'
}

function gitcreatebr(){
    brName=$1
    git branch -D $brName ; git branch $brName ; git checkout $brName
}
