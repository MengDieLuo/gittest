#!/bin/sh
names=Tom:Dick:Harry:John
OLDIFS="$IFS"     # Save the original value of IFS
IFS=":"
for persons in $names
do
        echo  Hi $persons
done
IFS="$OLDIFS"             # Reset the IFS to old value
set Jill Jane Jolene      # Set positional parameters
for girl in $*
do
        echo Howdy $girl
done

