export RPMBUILDROOT=/root/rpmbuild

yum install -y gcc rpm-build make patch wget git
mkdir -p $RPMBUILDROOT/SOURCES && mkdir -p $RPMBUILDROOT/SPECS && mkdir -p $RPMBUILDROOT/SRPMS
# fix rpm marcos
sed -i -e "s#.centos##g" /etc/rpm/macros.dist

# get nginx module
bash /usr/local/src/build/get_nginx_module.sh

# get dependance
bash /usr/local/src/build/get_dependency.sh
rpmbuild -bb $RPMBUILDROOT/SPECS/luajit.spec
rpm -U $RPMBUILDROOT/RPMS/x86_64/luajit-*
yum install -y gperftools-devel openssl-devel pcre-devel zlib-devel GeoIP-devel gd-devel perl-devel perl-ExtUtils-Embed libxslt-devel lua-devel

# get nginx
bash /usr/local/src/build/get_nginx.sh

# compile nginx
patch -p1 < $RPMBUILDROOT/SOURCES/nginx-spec.patch
cp -r /usr/local/src/sources/* $RPMBUILDROOT/SOURCES
rpmbuild -bb $RPMBUILDROOT/SPECS/nginx.spec
