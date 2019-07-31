#!/bin/bash
#program:
#	program creates files which named by user's imput and date command
#history:
#2019/07/15 lmd Frist release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#1.让使用者输入文件名，病取得fileuser这个变量
echo -e "I will use 'touch' command to create 3 file."
read -p "Please input your filename:" fileuser

#为了避免使用者随意按Enter按键，利用变量功能分析档名是否有设定
filename=${fileuser:-"filename"}


#开始用date指令来获取所需要的档名了
date1=$(date --date='2 days ago'  + "%Y%m%d")
date2=$(date --date='1 day ago'  +"%Y%m%d")
date3=$(date +"%Y%m%d") 
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}


#建立档名
touch "${file1}"
touch "${file2}"
touch "${file3}"
