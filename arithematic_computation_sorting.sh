#! /bin/bash
echo "This problem computes different arithematic expressions and sort the results"
read -p "Enter 3 number : " a b c
DisplayNumbers()
{
	echo "a=$a   b=$b   c=$c "
}
DisplayNumbers $a $b $c
