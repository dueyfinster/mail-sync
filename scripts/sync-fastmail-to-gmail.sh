#!/bin/bash
# See: http://imapsync.lamiral.info/FAQ.d/FAQ.Gmail.txt
IMAP_SYNC="/usr/bin/imapsync"
HOST1="mail.messagingengine.com"
HOST2="imap.gmail.com"

$IMAP_SYNC \
--host1 $HOST1 --user1 $USER1 --password1 $PASS1 -ssl1 \
--host2 $HOST2 --user2 $USER2 --password2 $PASS2 -ssl2 \
--f1f2 "INBOX.Archive"="[Gmail]/All Mail" \
--exitwhenover 500000000 \
--maxsize 25000000 \
--automap \
--expunge1 \
--addheader \
--folderlast "INBOX.Archive" \
--exclude "\[Gmail\]$" \
--regextrans2 "s/[\^]/_/g" \
--regextrans2 "s/['\"\\\\]/_/g" \
#--justfolders #Uncomment to do a dry run