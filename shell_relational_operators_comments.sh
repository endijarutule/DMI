#!/bin/bash

a=10
b=20

# 1. piemērs - salīdzināsana - vai ir vienāds (atslēgs -eq)
echo "----------- 1. piemērs -----------"
if [ $a -eq $b ]
then
echo "Jā"
echo "$a un $b ir vienādi skaitļi"
else
echo "Nē"
echo "$a un $b ir dažādi skaitļi"
fi
echo "---------------------------"

