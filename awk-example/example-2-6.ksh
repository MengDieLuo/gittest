#!/bin/ksh
# The Party program --Invitation to friend from the "guest" file
guestfile=/home/lmd/bin/mm/guests

if [[ ! -a "$guestfile"  ]]
then 
	printf "${guestfile##*/} not-existent "
	exit 1
fi
export PALCE="'Sarotini's"
(( Time=$(date +%H) +1 ))
set -a foods cheese crackers shrimp drinks "hot dogs" sandwiches
typeset -i n=0
for person in $(< $guestfile)
do
	if [[ $person = root ]]
	then 
		continue
	else
		mail –v –s "Party" $person <<- FINIS

             	Hi ${person}! Please join me at $PLACE for a party!

             	Meet me at $Time o'clock.

             	I'll bring the ice cream. Would you please bring

             	${foods[$n]} and anything else you would like to eat? Let

             	me know if you can make it.

                   Hope to see you soon.

                            Your pal,

                            ellie@`hostname`

FINIS
		n=n+1
		if (( ${#foods[*]} == $n  ))
		then
			set -A foods cheese crackers shrimp drinks "hot dogs" sandwiches
		fi
	fi
done
printf "Bye..."
