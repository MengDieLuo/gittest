#!/bin/sh
for name in `cat mail_list`
do
	if [ "$name" = "richard" ]
	then
		continue
	else
	mail $name < memo
	fi
done

