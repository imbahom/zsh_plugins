
function gitlistD(){
    git status --porcelain | awk '{if($1=="D") print$2}'
}

function gitlistM(){
    git status --porcelain | awk '{if($1=="M") print$2}'
}

function gitlistUntrackedFile(){
    git status --porcelain | awk '{if($1=="??") print$2}'
} 

function gitlistModifiedNewFile(){
    git status --porcelain | awk '{if($1=="AM" print$2}'
}

