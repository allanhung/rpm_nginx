#!/bin/bash

export NGINXVER=1.16.0-4.fc31
cd $RPMBUILDROOT/SRPMS && curl -lO http://rpmfind.net/linux/fedora/linux/development/rawhide/Everything/source/tree/Packages/n/nginx-$NGINXVER.src.rpm
rpm -U $RPMBUILDROOT/SRPMS/nginx-$NGINXVER.src.rpm
