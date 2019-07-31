#!/bin/sh
if [ $LOGNAME != root ]
then 
	echo "Must have root pricileges to run this program"
	exit 1
fi
cat << EOF
Warning: All jobs in the printer queue will be removed.
Please turn off the printer now. Press Enter when you
are ready to continue. Otherwise press Ctrl-C.
EOF
read ANYTHING
echo
/etc/init.d/lp stop
rm -f /var/spool/lp/SCHEDLOCK /var/spool/lp/temp*
echo
echo -e "Please turn the printer on now"
echo "press Enter to continue"
read ANYTHING
echo
/etc/init.d/lp/start
