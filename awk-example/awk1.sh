#!/bin/bash
print "Hello $LOGNNAME"
print "This report is for the month and year:"
cal | awk 'NR==1{print $0}'

if [[ -f data.form || -f formletter? ]]
then
	rm data.form formletter? 2> /home/lmd/bin/mm/null
fi
integer num=1
while true
do
	print "Form letter #$num:"
        read project?"What is the name of the project? "
        read sender?"Who is the status report from? "
        read recipient?"Who is the status report to? "
        read due_date?"What is the completion date scheduled? "
        echo $project:$recipient:$sender:$due_date > data.form
        print –n "Do you wish to generate another form letter? "
        read answer
	if [[ "answer" != [Yy]* ]]
	then
		break
	else
		awk -f formawk formdata > formletter$num
	fi
	(( num+=1 ))
done
awk -f formawk formdata > formletter$num
