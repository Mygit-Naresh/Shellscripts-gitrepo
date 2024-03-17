#!/bin/bash
PUBLIC_IP=$(curl ifconfig.io)
SYSTEM_IP=$(ifconfig)
SERVERNAME=$(hostname)
NAME=$(uname)
DIRECTORY=$(pwd)
FILELIST=$(ls -la)
PATH=$(whoami)
echo "My public_ip is $PUBLIC_IP"
echo "Local Ip_addres is $SYSTEM_IP"
echo "This computer is $SERVERNAME"
echo "uname is $NAME"
echo "listing working dir $DIRECTORY"
echo "files present $FILELIST"
echo "location is $PATH"