export RPMBUILDROOT=/root/rpmbuild

yum install -y gcc rpm-build make patch git
mkdir -p $RPMBUILDROOT/SOURCES && mkdir -p $RPMBUILDROOT/SPECS && mkdir -p $RPMBUILDROOT/SRPMS
# fix rpm marcos
sed -i -e "s#.centos##g" /etc/rpm/macros.dist

# get nginx module
bash /usr/local/src/build/get_nginx_module.sh

# get dependance
bash /usr/local/src/build/get_dependency.sh
sed -i -e "s#%ldconfig_scriptlets#%post -p /sbin/ldconfig\n%postun -p /sbin/ldconfig#g" $RPMBUILDROOT/SPECS/luajit.spec
rpmbuild -bb $RPMBUILDROOT/SPECS/luajit.spec
rpm -U $RPMBUILDROOT/RPMS/x86_64/luajit-*
yum install -y gperftools-devel openssl-devel pcre-devel zlib-devel GeoIP-devel gd-devel perl-devel perl-ExtUtils-Embed libxslt-devel lua-devel

# get nginx
bash /usr/local/src/build/get_nginx.sh

# compile nginx
/bin/cp -rf /usr/local/src/sources/* $RPMBUILDROOT/SOURCES
cd $RPMBUILDROOT/SPECS
patch -p1 < $RPMBUILDROOT/SOURCES/nginx-spec.patch
yum-builddep -y $RPMBUILDROOT/SPECS/nginx.spec
yum install -y lua-devel libcurl-devel
rpmbuild -bb $RPMBUILDROOT/SPECS/nginx.spec
