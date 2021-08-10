#!/bin/bash
echo "Adding UNIX + SMB user =>"
echo "enter username: "

    read username

echo "adding UNIX user $username and set password: "
    useradd $username
    passwd $username

echo "Added UNIX user $username "
    sleep 2

echo " => Generating samba password for $username: "
    pwgen 8
    smbpasswd -a $username
    smbpasswd -e $username

echo "..Checking added user $username "
    pdbedit -L | grep --color=always $username
    sleep 3

echo "..Now add $username in samba access config => "
    sleep 3
    nano /etc/samba/smb.conf
    systemctl reload smbd

echo "SMB Daemon reloaded."
exit

