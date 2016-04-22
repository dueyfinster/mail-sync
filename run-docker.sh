#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f "$DIR/.env" ]; then source "$DIR/.env"; else echo "Must have a .env file, please copy sample-env to .env and update values!"; exit 1; fi

CONTAINER="mailsync"

printf "\n\nKILLING ANY EXISTING CONTAINER \n"
docker kill $CONTAINER 
docker rm $CONTAINER 

#printf "\n\nPULLING LATEST \n"
#docker pull dueyfinster/mail-sync

printf "\n\nRUNNING LATEST \n"
docker run -t -i -d --name $CONTAINER -e USER1="$USER1" -e PASS1="$PASS1" -e USER2="$USER2" -e PASS2="$PASS2" -v "$DIR/scripts":/scripts dueyfinster/mail-sync