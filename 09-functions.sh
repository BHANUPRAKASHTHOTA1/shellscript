#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/home/centos/shellscript/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2.... $R Failure $N"
        echo "LogFile collected"
        exit 1
    else
        echo -e "$2.... $G Success $N"
        echo "LogFile collected"
    fi
}


yum install mysql -y &>>LOGFILE
VALIDATE $? "Installing MYSQL"

yum install postfix -y &>>LOGFILE
VALIDATE $? "Installing postfix"