#!/bin/bash
#program:
#	User input 2 integer numbers:program will cross these tow numbers.
#history:
#2019/07/15    lmd   release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH



echo -e "Your SHOULD input 2 numbers, I will multiplying them!\n"
read -p "first number:" firstnum
read -p "second number:" secondnum

total=$((${firstnum}*${secondnum}))
echo -e "\nThe result of ${firstnum} X ${secondnum} is ==> ${total}"
