#! /bin/bash -x
echo "This problem computes different arithematic expressions and sort the results"
read -p " enter 1st number : " a
read -p " enter 2nd number : " b
read -p " enter 3rd number : " c
echo " a=$a   b=$b   c=$c "
declare -A storeResult
storeResult[0]=$(($a+$b*$c))
storeResult[1]=$(($a*$b+$c))
storeResult[2]=$(($c+$a/$b))
storeResult[3]=$(($a%$b+$c))
echo "keys : " ${!storeResult[@]}
echo "values : " ${storeResult[@]}
