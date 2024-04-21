#!bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo -"Please run the script with root user"
    exit 1
else
    echo "You are good to go for installation"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo  -e "Installation of mysql is ...... $R FAILED $N"
    exit 1
else
    echo -e "Installation of mysql is ------$G SUCCESS $N"
    
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo -e "Installation of git is ..... $R FAILED $N"
    exit 1
else
    echo -e "Installation of git is ..... $G SUCCESS $N"
fi






