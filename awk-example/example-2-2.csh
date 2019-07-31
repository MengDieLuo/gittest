#!/bin/csh -f
  set guestfile = /home/lmd/bin/mm/guests
if (( ! -e "$guestfile" )) then 
	echo "$guestfile:t non-exist"
	exit 1
endif
setenv PLACE '"'Sarotini's"'
@ timee = `date +%H` +1
set food = ( cheese crackers shrimp drinks "hot dogs" sandwiches )
foreach person ( `cat $guestfile ` )
	if ( $person =~ root )  continue

	mail –v –s "Party" $person << FINIS   

        Hi $person Please join me at $PLACE for a party!

        Meet me at $timee o\'clock.

        I\'ll bring the ice cream. Would you please bring $food[1] and

        anything else you would like to eat? Let me know if you can

        make it. Hope to see you soon.

              Your pal,

              ellie@`hostname`       
FINIS

	shift food
	if ( $#food ==0 ) then
		set food = ( cheese crackers shrimp drinks "hot dogs" sandwiches )
	endif
end
echo "bey"
	
