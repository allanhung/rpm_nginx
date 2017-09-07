#!/bin/bash

export NGINXVER=1.12.1-1.fc27
http://rpmfind.net/linux/fedora/linux/development/rawhide/Everything/source/tree/Packages/n/nginx-1.12.1-1.fc27.src.rpm
wget -O $RPMBUILDROOT/SRPMS/nginx-$NGINXVER.src.rpm http://rpmfind.net/linux/fedora/linux/development/rawhide/Everything/source/tree/Packages/n/nginx-$NGINXVER.src.rpm
rpm -U $RPMBUILDROOT/SRPMS/nginx-$NGINXVER.src.rpm
