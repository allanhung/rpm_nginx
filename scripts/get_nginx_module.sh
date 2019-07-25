#!/bin/bash

export NGXMODNAME=ngx_image_thumb
cd /usr/local/src
git clone https://github.com/3078825/ngx_image_thumb.git
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=nginx-http-rdns
cd /usr/local/src
git clone https://github.com/flant/nginx-http-rdns.git
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=nginx-rtmp-module
export NGXMODVER=1.2.1
cd /usr/local/src
git clone -b v${NGXMODVER} https://github.com/arut/nginx-rtmp-module
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=ngx_devel_kit
export NGXMODVER=0.3.1rc1
cd /usr/local/src
git clone -b v${NGXMODVER} https://github.com/simplresty/ngx_devel_kit
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=lua-nginx-module
export NGXMODVER=0.10.13
cd /usr/local/src
git clone -b v${NGXMODVER} https://github.com/openresty/lua-nginx-module
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=echo-nginx-module
export NGXMODVER=0.61
cd /usr/local/src
git clone -b v${NGXMODVER} https://github.com/openresty/echo-nginx-module
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=headers-more-nginx-module
export NGXMODVER=0.33
cd /usr/local/src
git clone -b v${NGXMODVER} https://github.com/openresty/headers-more-nginx-module
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=redis2-nginx-module
export NGXMODVER=0.15
cd /usr/local/src
git clone -b v${NGXMODVER} https://github.com/openresty/redis2-nginx-module
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=naxsi
export NGXMODVER=0.56
cd /usr/local/src
git clone -b ${NGXMODVER} https://github.com/nbs-system/naxsi
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME
/bin/cp -f /usr/local/src/naxsi/naxsi_config/naxsi_core.rules $RPMBUILDROOT/SOURCES

export NGXMODNAME=nginx-module-vts
export NGXMODVER=0.1.18
cd /usr/local/src
git clone -b v${NGXMODVER} https://github.com/vozlt/nginx-module-vts
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=nginx-lua-prometheus
export NGXMODVER=0.20181120
cd /usr/local/src
git clone -b ${NGXMODVER} https://github.com/knyar/nginx-lua-prometheus
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME

export NGXMODNAME=stream-lua-nginx-module
export NGXMODVER=0.0.7
cd /usr/local/src
git clone -b v${NGXMODVER} https://github.com/openresty/stream-lua-nginx-module
tar -zcf $RPMBUILDROOT/SOURCES/$NGXMODNAME.tar.gz $NGXMODNAME
