# RPMBUILD for nginx on centos

nginx 1.16.0 RPM with addon

 - [ngx_image_thumb](https://github.com/3078825/ngx_image_thumb.git)
 - [nginx-http-rdns](https://github.com/flant/nginx-http-rdns.git)
 - [nginx-rtmp-module](https://github.com/arut/nginx-rtmp-module)
 - [ngx_devel_kit](https://github.com/simplresty/ngx_devel_kit)
 - [lua-nginx-module](https://github.com/openresty/lua-nginx-module)
 - [echo-nginx-module](https://github.com/openresty/echo-nginx-module)
 - [headers-more-nginx-module](https://github.com/openresty/headers-more-nginx-module)
 - [redis2-nginx-module](https://github.com/openresty/redis2-nginx-module)
 - [naxsi](https://github.com/nbs-system/naxsi)
 - [nginx-module-vts](https://github.com/vozlt/nginx-module-vts)
 - [nginx-lua-prometheus](https://github.com/knyar/nginx-lua-prometheus)
 - [stream-lua-nginx-module](https://github.com/openresty/stream-lua-nginx-module)

# How to Build

    git clone https://github.com/allanhung/rpm_nginx
    cd rpm_nginx
    docker run --name=nginx_build --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS -v $(pwd)/sources:/usr/local/src/sources -v $(pwd)/scripts:/usr/local/src/build centos /bin/bash -c "/usr/local/src/build/build_nginx.sh"

# check

    docker run --name=nginx_build --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS centos /bin/bash -c "yum localinstall -y /root/rpmbuild/RPMS/x86_64/luajit-*.rpm /root/rpmbuild/RPMS/x86_64/nginx-*.rpm /root/rpmbuild/RPMS/noarch/nginx-*.rpm"
