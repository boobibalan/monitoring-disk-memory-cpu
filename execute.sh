#!/bin/bash
#execute.sh
doc="/root/backup"
sudo sh /root/script/per_check.sh >> $doc/$( date '+%Y-%m-%d_%H-%M-%S')log.txt
if [ $? -eq 0 ]; then
find $doc/*.txt -mtime +1 -exec rm {} \;
else
echo fail
fi

