#!/bin/sh
inrement ()
{
sum=`expr $1 + 1`
return $sum     
}
echo -n "The sum is"
inrement 5
echo $?
echo $sum




