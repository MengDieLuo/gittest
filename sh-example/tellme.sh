#!/bin/bash
echo -n "How old are you?"
read age
if [ $age -lt 0 -o $age -gt 120 ]
then
	echo "Welcome to our planet!"
	exit 1
fi
if [ $age -ge 0 -a $age -lt 13 ]
then 
	echo "A child is a garden of verses"
elif [ $age -ge 13 -a $age -lt  20 ]
then
	echo "Rebel without a cause"
elif [ $age  -ge 20 -a  $age -lt  30 ]
then
        echo "You got the world by the tail!!"
elif [ $age -ge  30 -a  $age -lt 40 ]
then
        echo "Thirty something..."
else
	echo "Sorry I asked"
fi
