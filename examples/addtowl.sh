#!/bin/bash
DIRBUSTERWL="dirlist.txt"
for entry in "$(grep -v "^#" dirlist2.txt)"
do
	if [ -z "$(grep "^$entry$" $DIRBUSTERWL)" ]
	then
		command="1i\\"$'\n'"$entry"$'\n'
		sed -i '' "$command" "$DIRBUSTERWL"
	fi
done

