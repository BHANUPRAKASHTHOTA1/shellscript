#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2.... $R Failure $N"
        exit 1
    else
        echo -e "$2.... $G Success $N"
    fi
}


yum install mysql -y
VALIDATE $? "Installing MYSQL"

yum install posttffix -y
VALIDATE $? "Installing posttffix"