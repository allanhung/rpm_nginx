RPMBUILD for nginx on centos
=========================

Nginx RPM

How to Build
=========

    git clone https://github.com/allanhung/rpm_nginx
    cd rpm_nginx
    docker run --name=nginx_build --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS -v $(pwd)/sources:/usr/local/src/sources -v $(pwd)/scripts:/usr/local/src/build centos /bin/bash -c "/usr/local/src/build/build_nginx.sh"

# check

    docker run --name=nginx_build --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS centos /bin/bash -c "yum localinstall -y /root/rpmbuild/RPMS/x86_64/luajit-*.rpm /root/rpmbuild/RPMS/x86_64/nginx-*.rpm /root/rpmbuild/RPMS/noarch/nginx-*.rpm"
