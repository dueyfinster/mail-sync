#!/bin/bash
IMAP_SYNC="/usr/bin/imapsync"
HOST1="mail.messagingengine.com"
HOST2="imap.gmail.com"


$IMAP_SYNC \
--host1 $HOST1 --user1 $USER1 --password1 $PASS1 -ssl1 \
--host2 $HOST2 --user2 $USER2 --password2 $PASS2 -ssl2 \
--prefix1 "INBOX." \
--prefix2 "[Gmail]" \
--automap \
--justfolders # trial run for now
# --regextrans2 's/INBOX\.Archive/All Mail/'
# --useheader 'Message-Id' --skipsize