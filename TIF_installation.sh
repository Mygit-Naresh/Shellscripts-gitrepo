#!/bin/bash
if [ $# -ne 1 ]; then
echo -e "\e[33m provide any of the options below \n install \n remove \n status \e[0m"
else
    if [ $1 = "install" ]; then
    read -p "please provide the package name to be installed " pkg_name
    sudo yum install ${pkg_name} -y > /tmp/sucess.log 2> /tmp/failure.log
        if [ $? -eq 0 ]; then
        echo -e "\e[32m package installed successfully \e[0m"
        else
        echo -e "\e[31m package installation failure please check the provided package name \e[0m"
        fi
        fi
        fi