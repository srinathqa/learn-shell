#!bin/bash

number1=$1
number2=$2

echo "Entered Number of arguements passed: $@"
echo "No of arguments passed $#"

if [ $number1 -gt $number2 ]
then
    echo "number1 is greather than number2 "
else
    echo "number1 is less than number2 "
fi

echo "conditional commands are -gt, -ge, -lt, -le, -eq"


