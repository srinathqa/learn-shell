#!bin/bash

echo "Please enter USERNAME: "
read USERNAME #User name is not masked
echo "Please enter Password (its masked):"
read -s PASSWORD #Password is masked
echo "User name is $USERNAME and password is $PASSWORD"