#!/bin/bash

export NGINXVER=1.12.1-2.fc28
http://rpmfind.net/linux/fedora/linux/development/rawhide/Everything/source/tree/Packages/n/nginx-$NGINXVER.src.rpm
wget -O $RPMBUILDROOT/SRPMS/nginx-$NGINXVER.src.rpm http://rpmfind.net/linux/fedora/linux/development/rawhide/Everything/source/tree/Packages/n/nginx-$NGINXVER.src.rpm
rpm -U $RPMBUILDROOT/SRPMS/nginx-$NGINXVER.src.rpm
