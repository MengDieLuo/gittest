#!/bin/bash
function printit(){
	echo  "Your choice is $1"     # 加上 -n 可以不斷行繼續在同一行顯示
}

echo "This program will print your selection !"
read -p "Input your choice: " choice   
case ${choice} in
  "one")
	printit $choice ; 
#echo ${1} | tr 'a-z' 'A-Z'  # 將參數做大小寫轉換！
	;;
  "two")
	printit $choice ;# echo ${1} | tr 'a-z' 'A-Z'
	;;
  "three")
	printit $choice ; #echo ${1} | tr 'a-z' 'A-Z'
	;;
  *)
	echo "Usage ${0} {one|two|three}"
	;;
esac
