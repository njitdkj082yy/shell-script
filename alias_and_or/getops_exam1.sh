#!/bin/bash
func()
{
	echo " 'basename $0' -[a b] args." >&2
	exit 0
}
while getopts "[ba:]" options
do
    case $options in
    a)
   	echo "You enter -a as an option."
	;;
    b)
	echo "You enter -b as an option."
  	;;
    \?)
	echo "You enter ? as an option."
	func
	;;
    :)
	echo "You enter : as an option"
	echo "No argument value for option $OPTARG"
	;;
    esac
done

