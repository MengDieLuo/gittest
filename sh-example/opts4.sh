#!/bin/sh
while getopts xyz: arguement 2> /dev/null
do
	case $options in
	x) 
		echo "YOu entered -x as an option"
		;;
	y)
		echo "You entered -y as an option"
		;;
	z)
		echo "you entered -z as an option."
		echo "\$OPTARG is $OPTARG."
		;;
	\?)
		echo "Usage opts4 [-xy] [-z  argument]"
		exit 1
		;;
	esac
done
echo -e "The intial valueof \$OPTIND is 1
The final value of \$OPTIND is $OPTIND.
Since this reflects the number of the next command-line argument,
the number of arguments passed was `expr $OPTIND - 1`. "



