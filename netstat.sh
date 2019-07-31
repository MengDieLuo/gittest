#!/bin/bash
#Program:
#using netstat and grep to detect WWW,SSH,FTP and MAIL services
#History
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


#告知语言
echo "now, I will detect you Linux server's servers!"
echo -e "The www,ftp,ssh,mail(smtp) will detect! \n"


#开始进行一些测试工作，并且也输出一些信息
testfile=/dev/shm/netstat_checking.txt
netstat -tuln > ${testfile}
testing=$(grep ":80 " ${testfile})
if [ "${testing}" != ""  ];
then
	echo "www is running in your system."
fi

testing=$(grep ":22 " ${testfile})
if [ "${testing}" != ""  ];
then
        echo "ssh is running in your system."
fi

testing=$(grep ":21 " ${testfile})
if [ "${testing}" != ""  ];
then
        echo "ftp is running in your system."
fi

testing=$(grep ":25 " ${testfile})
if [ "${testing}" != ""  ];
then
        echo "mail is running in your system."
fi

