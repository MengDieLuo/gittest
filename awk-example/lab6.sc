BEGIN{
print "                        ***FIRST QUARTERLY REPORT***                    "
print "                       ***CAMPAIGN 2004 CONTRIBUTIONS***                "
print "___________________________________________________________________________"
print "NAME                 PHONE             Jan  |  Feb  |  Mar |  Total Donated"
print "___________________________________________________________________________"
}
{
i=0
count++
printf("%-21s%s  %6.2f%8.2f%8.2f  %-7.2f\n",$1,$2,$3,$4,$5,$3+$4+$5)
}
{
total+=$3+$4+$5
print $7
}
{
b=$3+$4+$5
if(b>500)
{
to[$1]=$2
}
if(max>b)
{
max=max
}
else
{
name1=$1
max=b
}
#max=max>b?max:b
}
END{
print "___________________________________________________________________________"
printf("\n%38s\n",$ss="SUMMARY")
print "___________________________________________________________________________"
printf("The campaign received a total of $%.2f for this quarter\n",total)
printf("The average donation for the %d contributors was $%.2f.\n",count,total/3)
printf("The highest contribution was $%.2f. made by %s\n",max,name1)
print "The following people donated over $500 to the campaign.\nThey are eligible for the quarterly drawing!!\nListed are their names (sorted by last names) and phone numbers:\n"
for(it in to)
{
print it,"--",to[it] 
}

}
