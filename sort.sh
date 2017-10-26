#!/bin/bash
a=$1
b=$2
c=$3

# ja c  ir > par b (un > c) un b > a
if (( $c > $b && $b > $a ))
then
     echo "GATAVS(1.): $a $b $c"
fi

if (( $b > $c && $c > $a ))
then
      echo "GATAVS(2.): $a $c $b"
fi

if (( $c > $a && $a > $b ))
then
      echo "GATAVS(3.): $b $a $c"
fi

if (( $a > $c && $c >$b ))
then
      echo "GATAVS(4.): $b $c $a"
fi

if (( $b > $a && $a > $c ))
then
      echo "GATAVS(5.): $c $a $b"
fi

if (( $a > $b && $b > $c ))
then
     echo "GATAVS(6.): $c $b $a"
fi
