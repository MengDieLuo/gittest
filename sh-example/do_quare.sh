#!/bin/sh
function square
{
	sq=`expr $1 \* $1`
        echo  "Number to be squared is $1."
        echo  "The result is $sq "
}
echo "give me a number to square."
read number
value_returned=`square $number`
echo   $value_returned




