#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONTAINER="mailsync"

printf "\n\nKILLING ANY EXISTING CONTAINER \n"
docker kill $CONTAINER 
docker rm $CONTAINER 

printf "\n\nPULLING LATEST \n"
docker pull dueyfinster/mail-sync

printf "\n\nRUNNING LATEST \n"
docker run -t -i -d --name $CONTAINER -v "$DIR":/data dueyfinster/mail-sync