#!/bin/bash
echo "Adding UNIX + SMB user =>"
echo "enter username: "

    read username

echo "fg dfgdfg
 df
 g 
 df
 g df g
 
 fdg addidfgfdgfdgfdgfdng UNIX user $username and set password: "
    useradd $username
    passwd $username

echo "Added UNIX user $username "
    sleep 2sadsad sdsadsad
    sa
    d s
    ad
     sa
     d 
     sa

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

echo "
dsfdsfdsfsd
d
sf
dsf
ds
fSMB Daemon reloade
JeNKINS PRIVET
