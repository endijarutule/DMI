#!/bin/bash


#2. piemērs - izteiksmes (+,-,*,/) ar konstantēm
echo "---------- Piemērs Nr.2 -----------"
val21=`expr 2 + 3`
echo "2 + 3 = " $val21
val22=`expr 2 - 3`
echo "2 - 3 = " $val22
val23=`expr 2 \* 3`
echo "2 * 3 = " $val23
val24=`expr 2 / 3`
echo "2 / 3 = " $val24
val25=`expr 2 % 3`
echo "2 % 3 = " $val25
echo "------------------------------"


#1. piemērs
echo "-------- Piemērs Nr.1 --------"
val11='expr 2+2'
echo "Parasti apostrofi bez atstarpēm "$val11
val12='expr 2 + 2'
echo "Parasti apostrofi ar atstarpēm "$val12
val13=`expr 2+2`
echo "Neparasti apostrofi bez atstarpēm "$val13
val14=`expr 2 + 2`
echo "Neparasti apostrofi ar atstarpēm "$val14
echo "----------------------------"







#!/bin/sh

#val=`expr 2 + 2`
#echo "Total value : $val"

#!/bin/sh

#val=`expr 2 - 2`
#echo "Total value : $val"

#!/bin/sh

#val=`expr 2 \* 2`
#echo "Total value : $val"

#!/bin/sh

#val=`expr 2 / 2`
#echo "Total value : $val"
