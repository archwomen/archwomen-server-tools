#!/bin/bash
#
# This script should be set as user signup $SHELL
# Goal: ssh signup@archwomen.org
#
# Server will check that you have a seceret key, and are thus allwed to make an 
# account or edit your current account. You will then follow the prompts to make
# your user account and add your public key or edit your user account and add or
# remove a public key.
#
# This script is under developement
#

users="/var/access/users"

GREP=/bin/grep
USERADD=/usr/sbin/useradd
PASSWD=/usr/bin/passwd

read -p "echo -n "Enter your single use key now and press [enter]: " key

$GREP -i ${key} "$users"

if [ $? == 1 ]
then
	echo "That is not a valid key"
	exit 0
else
	echo "Authenticated..."

echo -n "Enter your username and press [enter]: " 

read username

$GREP -i ${username} /etc/passwd

if [ $? == 0]
	echo " $username do you want to add a public key? [yes or no]: "
	read yno
	case $yno in
		[yY] | [yY][Ee][Ss] )
			echo "Enter your public_key here and press [enter]: "
			read public_key
			${public_key} >> /home/$username/.ssh/authorized_keys
			;;
		[nN] | [n|N][O|o] )
			echo "Exiting...";
			exit 1
			;;
		*) echo "Please enter yes or no"
			;;
	esac
else
	echo "Stand by while I create your account"
	$USERADD $username
	echo "Account created"
	sleep 2
	echo -n "Your password will now be set."
	$PASSWD $username
fi
