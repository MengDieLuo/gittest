#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit(){
	echo "Your choice is ${0}"   # 這個 $1 必須要參考底下指令的下達
}

echo "This program will print your selection !"
read -p "Input your choice: " choice   
case ${choice} in
  "one")
	printit 1 12  # 請注意， printit 指令後面還有接參數！
	;;
  "two")
	printit 2 22
	;;
  "three")
	printit 3 32
	;;
  *)
	echo "Usage ${0} {one|two|three}"
	;;
esac
