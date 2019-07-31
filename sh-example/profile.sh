#!/bin/sh
echo "Selector a terminal type:"
cat << ENDIT
        1) vt 120
        2) wyse50
	3) sun
ENDIT
read choice
case "$choice " in
1) 
	TERM=vt120
        export TERM
        ;;
2)
	TERM=wyse50
	export TERM
	;;
3)
	TERM=sum
	export TERM
	;;
esac
echo  "TREM is $TERM"

