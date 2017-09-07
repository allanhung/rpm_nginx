#!/bin/bash

export LUAJITVER=2.1.0-0.6beta3.fc27
wget -O $RPMBUILDROOT/SRPMS/luajit-$LUAJITVER.src.rpm http://rpmfind.net/linux/fedora/linux/development/rawhide/Everything/source/tree/Packages/l/luajit-$LUAJITVER.src.rpm
rpm -U $RPMBUILDROOT/SRPMS/luajit-$LUAJITVER.src.rpm
