#! /bin/bash
SAVEIFS=$IFS  
IFS=$'\n'
2>&1
for line in $(cat $1 | grep -v duplicate | sed 's/->/:/g')
do
	TARGETFILE=$(echo $line | cut -d : -f 1)
	TYPO1=$(echo $line | cut -d : -f 2 | grep -o "[^ ]\+\( \+[^ ]\+\)*")
	TYPO2=$(echo $line | cut -d : -f 3 | grep -o "[^ ]\+\( \+[^ ]\+\)*")
	sed -i "s/$TYPO1/$TYPO2/g" $TARGETFILE > /dev/null 
	echo successfully fix typos in $TARGETFILE 
done
IFS=$SAVEIFS
