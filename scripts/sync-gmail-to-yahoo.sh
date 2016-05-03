#!/bin/bash
# See: http://imapsync.lamiral.info/FAQ.d/FAQ.Gmail.txt
IMAP_SYNC="/usr/bin/imapsync"
HOST1="imap.gmail.com"
HOST2="imap.mail.yahoo.com"

$IMAP_SYNC \
--host1 $HOST1 --user1 $USER1 --password1 $PASS1 -ssl1 \
--host2 $HOST2 --user2 $USER2 --password2 $PASS2 -ssl2 \
--exitwhenover 2500000000 \
--useheader="X-Gmail-Received" \
--useheader "Message-Id" \
--automap \
--regextrans2 "s,\[Gmail\].,," \
--skipcrossduplicates \
--folderlast  "[Gmail]/All Mail" \
--justfolders #Uncomment to do a dry run
