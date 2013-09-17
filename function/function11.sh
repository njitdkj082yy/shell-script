#!/bin/bash
text="global variable"
use_local_var_fun()
{
	local text="local variable"
	echo "In function use_local_var_func "
	echo "$text"
}
echo "Execute the function use_local_var_fun"
use_local_var_fun

echo "Out of function use_local_var_fun"
echo $text
exit 0
