function geoip(){
    ip=$1
    curl http://freeapi.ipip.net/$ip
}
