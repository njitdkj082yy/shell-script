#!/bin/bash
while getopts "fh:" optname
do
	case "$optname" in
	f)
		echo "Option $optname is specified."
		;;
	h)
		echo "Option $optname has value $OPTARG."
		;;
	\?)
		echo "Unknown option $OPTARG "
		;;
	:)	
		echo "No parameter value for option $OPTARG"
		;;
	*)
		echo "Unknown error while processing options"
		;;
	esac
done


echo '$OPTIND='
echo "$OPTIND"
shift $(($OPTIND -1))
for options in "$@"
do
	echo $options
	if [ ! -f $2 ]
	then 
		echo "Can not find file $options."
	else
		echo "Find the file $options."
	fi	
done
