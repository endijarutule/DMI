#!/bin/bash
#if (...) then ... elif (...) then ... else ... fi
a=$1
if (( $a > 0 ))
then
   echo "Izdr. no galv. zara (jā gad.), tad, kad $a ir >0"
elif (( $a == 0 )); then
   echo "Izdr. no alt. zara (jā  gad.), tad, kad $a ir  =0"
else
   echo "Izdr. no galv. zara (nē gad.), tad, kad $a nav >0"
   echo "Nostrādā tad, kad iestājās nē gad. visos iepr. gad."
fi
echo "Sis teksts tiks attelots jeb kura gadijuma!"





: <<'END'
#if (...) then ... else ... fi
a=$1
if (( $a > 0 ))
then
   echo "Izdr. no galv. zara (jā gad.), tad, kad $a ir >0"
else
   echo "Izdr. no galv. zara (nē gad.), tad, kad $a nav >0"
fi
echo "Sis teksts tiks attelots jeb kura gadijuma!"
END

: <<'END'
#if (...) then ... fi
a=$1
if (( $a > 0 ))
then
   echo "Izdr. no galv. zara (jā gad.), tad, kad $a ir >0"
fi
echo "Sis teksts tiks attelots jeb kura gadijuma!"
END
