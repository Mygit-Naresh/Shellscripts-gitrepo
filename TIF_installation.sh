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
        elif [ $1 = "status" ]; then
    read -p "please provide the package name to get the status " pkg_name
    pkg_stat=$(systemctl status ${pkg_name} | head -3 | tail -1 | cut -d ":" -f 2 | cut -d " " -f 2)
        if [ $pkg_stat = "inactive" ]; then
        read -p "present package state is ${pkg_stat} do you want to start it: please mention y/n " response
            if [ $response = "y" ]; then
            sudo systemctl start ${pkg_name} > /tmp/sucess.log 2> /tmp/failure.log
            echo "${pkg_name} service is ${pkg_stat}"
            else
            echo "exiting from wizard"
            fi
        else
        echo "${pkg_name} service is ${pkg_stat}"
        fi
    else
    echo -e "\e[31m please provide the valid option as below \n install \n remove \n status \e[0m"
    fi
fi


        