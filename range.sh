#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


cat[1]="a"
cat[2]="b"
cat[3]="c"
cat[4]="d"
cat[5]="e"
cat[6]="f"
cat[7]="g"
cat[8]="h"
cat[9]="i"
cat[10]="j"
catnum=10


cated=0
while [ "${cated}" -lt 3 ];
do
	check=$(( ${RANDOM}*${catnum}/32767+1 ))
	mycheck=0
	if [ "${cated}" -ge 1 ];
	then
		for i in $(seq 1 ${cated})
		do
			if [ "${catedco[$i]}" == "${check}"  ];
			then
				mycheck=1
			fi
		done
	fi
	if [ ${mycheck} == 0  ];
	then	
		echo "you may choice ${cat[${check}]}"
		cated=$(( ${cated} + 1 ))
		catedcon[${cated}]=${check}
	fi
done

