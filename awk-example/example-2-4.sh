#!/bin/sh
#The party program--Invitations to friends from the "guest" file
guestfile=/home/lmd/bin/mm/guests
if [ ! -f "$guestfile" ]
then 
	echo "'basename $guestfile' non-existent"
	exit 1
fi
PLACE="'Sarotini's";
export PLACE
Time=$((`date +%H`+1))
set cheese crackers shrimp drinks "hot dogs" sandwiches

for person in `cat $guestfile`
do
	if [ $person =~ root ]
	then
		continue
	else
		cat <<- FINIS									Hi ${person}! Please join me at $PLACE for a party!				Meet me at $Time o'clock.							I'll bring the ice cream.Would you please bring $1 and anything 		else you would like to eat?Let me know if you can make it.			Hope to see you soon.								Your pal.									ellie@`hostname`
FINIS
		shift
		if [ $# -eq 0 ]
		then
			set cheese carckers shrimp drinks "hot dogs" sandwiches
		fi
	fi
done 
echo "bye..."
