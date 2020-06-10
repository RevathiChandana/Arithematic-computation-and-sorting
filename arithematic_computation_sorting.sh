#! /bin/bash 
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
echo "Dict keys : " ${!storeResult[@]}
echo "Dict values : " ${storeResult[@]}
declare -a array
i=0
while (( i<=3 ))
do
	array[$i]=${storeResult[$i]}
	((i++))
done
echo "array values : " ${array[@]}
for (( i=o; i<=3; i++ ))
do
	for (( j=i+1; j<=3; j++ ))
	do
		if [ ${array[$i]} -gt ${array[$j]} ]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done
echo "ascending order of array : " ${array[@]}
