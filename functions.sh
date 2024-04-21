#!bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $? ne 0 ] 
    then
        echo -e "$2.... $R FAILIRE $N"
    else
        echo -e "$2.....$G SUCCESS $N"
    fi
}

if [ $USERID ne 0 ]
then
    echo "Please run the scrip with root user"
    exit 1
else
    echo "You are good to go for instllation...."
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL...."

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing GIT ...."




