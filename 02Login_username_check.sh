#!/bin/sh

valid_user="admin"

echo -n "Enter your login name: "
read entered_user

if [ "$valid_user" = "$entered_user" ]
then
    echo "You are admin"
else
    echo "Entered login name is invalid"
fi

