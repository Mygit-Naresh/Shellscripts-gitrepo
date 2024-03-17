#!/bin/bash
PUBLIC_IP=$(curl ifconfig.io)
echo "This is my public ip $PUBLIC_IP"