#!/bin/sh
echo what is your full name?
echo $1 $2 $3
echo what is  your first name?
echo $1
echo what is your birthday?
read age
echo wow,you are `expr 2019 - $age` years old
echo -e your \$HOME is $HOME
ps aux | less
set `date `  
echo The day of the week is $4 and the current time is $5 




