#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR::Please run this script with root access"
    exit 1
fi
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installatioin of my sql is error"
    exit 1
else
    echo "Installatioin of my sql is success"
fi

yum install postfix -y
if [ $? -ne 0 ]
then
    echo "Installatioin of Postfix is error"
    exit 1
else
    echo "Installatioin of Postfix is success"
fi