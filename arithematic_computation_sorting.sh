#! /bin/bash
echo "This problem computes different arithematic expressions and sort the results"
read -p " enter 1st number : " a
read -p " enter 2nd number : " b
read -p " enter 3rd number : " c
echo " a=$a   b=$b   c=$c "
echo " a + b * c = " $(($a+$b*$c))
echo " a * b + c = " $(($a*$b+$c))
