#!/bin/bash
MAXARGS=3
ERROR=58

test $# -ne $MAXARGS && echo "Usage:`basename $0` $MAXARGS arguments" && exit $ERROR
echo "Correct arguments are passed to this script"
exit 0
