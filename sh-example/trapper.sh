#!/bin/sh
trapper ()
{
echo "In trapper"
trap 'echo "Caught in a trap!"' 2

}
while :
do
	echo "In the main script"
	trapper
	echo "still in main"
	sleep 5
done


