#!/bin/bash
S01_name="Sam"
S01_dept=Computer
S01_phone=0512-123456

S02_name="Cedar"
S02_dept=English
S02_phone=0512-223456

S03_name="Tongni"
S03_dept=Physics
S03_phone=0512-323456

PS3='Pls.select the number of student'

select student in "S01" "S02" "S03"
do
   name=${student}_name 
   dept=${student}_dept
   phone=${student}_phone
   
   echo "BASIC INFOMATION OF NO.$student is:"
   echo "NAME=${!name}"
   echo "DEPT=${!dept}"
   echo "PHONE=${!phone}"
break
done

