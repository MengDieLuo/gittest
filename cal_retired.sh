#!/bin/bash
#program
#	you input demobilization date,I calculate how many days before you demobilize
#History
#2019/07/15 lmd first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This programs will try to calculate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20190715):" date2

#判断输入的日期格式 是否正确
date_d=$(echo ${date2} | grep '[0-9]\{8\}')
if [ "$date_d" == "" ];
then
	echo "Your input the wrong date format..."
	exit 1
fi 


#开始计算日期
declare -i date_dem=$(date --date="${date2}" +%s)
declare -i date_now=$(date +%s)
declare -i date_total_s=$((${date_dem}-${date_now}))
declare -i date_d=$((${date_total_s}/60/60/24))

#判断是否已经退伍
if [ "${date_total_s}" -lt "0" ];
then 
	echo "you had been demobilization before:" $((-l*${date_d})) " ago"
else
	declare -i date_h=$(($((${date_total_s}-${date_d}*60*60*24))/60/60))
	echo "You will demobilize after${date_d} days and ${date_h} hours."
fi
