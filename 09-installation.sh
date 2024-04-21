#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root user"
    exit 1
else
    echo "You are good to go for installation"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql is ......FAILED"
    exit 1
else
    echo "Installation of mysql is ------SUCCESS"
    
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git is ..... FAILED"
    exit 1
else
    echo "Installation of git is ..... SUCCESS
if






