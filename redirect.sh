#!/bin/bash

cat <<EOF >log.txt
LOG FILE HEADER
Test log file
function : sys stats
EOF

# the lines btw cat<<EOF>log.txt and EOF will be written to the log.txt file.
#

#custom file descriptors

echo log file >log.txt
exec 3<log.txt

cat <&3

#custom file descriptor to append output

exec 4>>log.txt
echo append >&4
cat log.txt
