#!/bin/bash

exec 8>&1 9>&2

exec &> loggg

ls z*
date
exec 1>&8 2>&9
exec 8>&- 9>&-

echo "--------------"
echo "Close FD 8 and FD 9"
ls z*
date
