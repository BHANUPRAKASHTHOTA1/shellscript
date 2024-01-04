#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2.... Failure"
        exit 1
    else
        echo "$2.... Success"
    fi
}



if [ $USERID -ne 0 ]
then
    echo "ERROR::Please run this script with root access"
    exit 1
fi
yum install mysql -y
VALIDATE $? "Installing MYSQL"

yum install postfix -y
VALIDATE $? "Installing postfix"