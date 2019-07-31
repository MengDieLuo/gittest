#!/bin/sh
#lmd
#scriptname greetme
#write some work
echo hello to see you $LOGNAME
set `date`
echo the date is $2 $3,$1
echo the month is $2
cat /etc/motd
ls -al 
echo the persent PATH is $PATH
echo then home is $HOME
echo the TERM is $TERM
id lmd | cut -d " "  -f 3
printf "could you loan me \$%.2f\n" 50
echo "Good bye"



