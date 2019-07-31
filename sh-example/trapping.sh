#!/bin/sh
trap 'echo "Ctrl–C will not terminate $0."' 2
trap 'echo "Ctrl–\ will not terminate $0."' 3
echo "Enter any string after the prompt."
echo "when you are ready after the prompt"
echo "When you are ready to exit,type \"stop\""
while true
do
	echo -n "Go ahead...> "
	read reply
	if [ "$reply" = stop ]
        then
		break
	fi
done




