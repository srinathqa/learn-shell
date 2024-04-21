#!bin/bash
num1=$1
num2=$2

#echo "Please enter number1 : "
#read num1
#echo "Please enter number2 : "
#read num2 

sum=$(($num1+$num2))
product=$(($num1*$num2))
echo "Sum of two numbers: $sum"
echo "Product of two numbers: $product"
