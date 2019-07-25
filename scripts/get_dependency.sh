#!/bin/bash

export LUAJITVER=2.1.0-0.11beta3.fc31
cd $RPMBUILDROOT/SRPMS && curl -lO http://rpmfind.net/linux/fedora/linux/development/rawhide/Everything/source/tree/Packages/l/luajit-$LUAJITVER.src.rpm
rpm -U $RPMBUILDROOT/SRPMS/luajit-$LUAJITVER.src.rpm
