#!/bin/bash
#program
#	user input a scale number to calculate pi number
#history
#2019/07/15    lmd    release
PATH=/bin:/sbin:/usr/bin:/usr/sbn:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


echo -e "this program will calculate pi value \n"
echo -e "your should input a float number to calulate pi value.\n"
read -p "the scale number (10~10000)?" checking
num=${cheking:-"10"}	#开始判断是否有输入值
echo -e "starting calculate pi value. Be patient"
time echo "scale+${num};4*a(l)" | bc -lq
