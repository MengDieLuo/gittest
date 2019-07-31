#!/bin/sh
echo The name of this script is $0
echo The argument are $*
echo The argument are is $1
echo The second argument is $2
echo The number of arguement is $#
oldargs=$*
set Jake Nicky Scortt
echo All the positional parameters are $*
echo The number of positinal prarmeters is $#
echo "Good-bye for now , $1"
set `date`
echo The date is $2 $3,$6
echo -e  "The value of \$oldargs is $oldargs"
set $oldargs
echo $1 $2 $3
