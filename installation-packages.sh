#!bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

VALIDATE(){
    if [ $? -ne 0 ] 
    then
        echo -e "$2.... $R FAILIRE $N"
    else
        echo -e "$2.....$G SUCCESS $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo -e "$R Please run the scrip with root user $N "
    exit 1
else
    echo -e "$Y You are good to go for instllation.... $N"
fi

for i in #@
do
    echo "package to install: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$Y Package is already installed .... $Y SKIPPING ...$N"
    else
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "Installation of $i"
    fi
done

