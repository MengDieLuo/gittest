#!/bin/sh
for person in `cat mylist`
do
	mail $person < letter
        echo  $person was sent a letter.
done
echo "The letter has been sent."


