RPMBUILD for nginx on centos
=========================

Pypillar is an variable setting style like saltslack pillar.

How to Build
=========

::

    git clone https://github.com/allanhung/rpm_nginx
    docker run --name=nginx_build --rm -ti -v $(pwd)/rpms:/root/rpmbuild/RPMS -v $(pwd)/sources:/usr/local/src/sources -v $(pwd)/scripts:/usr/local/src/build /bin/bash -c "/usr/local/src/build/build_nginx.sh"
