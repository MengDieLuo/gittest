#!/bin/bash
#program:
#	programs show the effect of shift function.
#History:
#2019/07/15
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


echo "Total parameter numberis ==> $#"
echo "Your whole parameter is  ==> '$@'"
shift
echo "Total parameter numberis ==> $#"
echo "Your whole parameter is  ==> '$@'"
shift 3
echo "Total parameter numberis ==> $#"
echo "Your whole parameter is  ==> '$@'"
