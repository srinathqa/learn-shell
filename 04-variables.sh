#!bin/bash

echo "Please enter USERNAME: "
read USERNAME #User name is not hidden
echo "Please enter Password (its not visible):"
read -s PASSWORD #Password is hidden
echo "User name is $USERNAME and password is $PASSWORD"