#!/bin/bash

echo "Input a: "; read a
echo "Input b: "; read b

if (( $a ==$b ))
then
echo "a ($a) ir vienāds ar b ($b)"
elif (( $a > $b ))
then
echo "a ($a) ir lielāks par b ($b)"
else
echo "a ($a0 ir mazāks par b ($b)"
fi











: <<'END'
if ((  $a ==  $b ))
then
echo "a ($a) ir vienāds ar b ($b)"
fi
if (( $a > $b ))
then
echo "a ($a) ir lielāks par b ($b)"
fi
if (( $a < $b ))
then
echo "a ($a) ir mazāks par b ($b)"
fi
END



: <<'END'
c=`expr $a + $b`
echo "$a +$b = "$c
END
