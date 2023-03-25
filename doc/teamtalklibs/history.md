yum -y remove httpd* php* mysql-server mysql mysql-libs php-mysql
yum -y install wget vim git texinfo patch make cmake gcc gcc-c++ gcc-g77 flex bison file libtool libtool-libs autoconf kernel-devel libjpeg libjpeg-devel libpng libpng-devel libpng10 libpng10-devel gd gd-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glib2 glib2-devel bzip2 bzip2-devel libevent libevent-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel vim-minimal nano fonts-chinese gettext gettext-devel ncurses-devel gmp-devel pspell-devel unzip libcap diffutils
wget https://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.35.tar.gz
shutdown now
ip add
yum update
export LANG="en_US.UTF-8";export LANGUAGE="en_US.UTF-8";top
ls
tar -zxvf mysql-5.6.35.tar.gz 
cd mysql-5.6.35
ip add
cd mysql-5.6.35
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
make -j 2 && make install
groupadd mysql
useradd -s /sbin/nologin -M -g mysql mysql
vim /etc/my.cnf
/usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
chown -R mysql /usr/local/mysql/var
chgrp -R mysql /usr/local/mysql/.
cp support-files/mysql.server /etc/init.d/mysql
chmod 755 /etc/init.d/mysql
cat > /etc/ld.so.conf.d/mysql.conf<<EOF
/usr/local/mysql/lib
/usr/local/lib
EOF

ldconfig
/etc/init.d/mysql start
/usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
vim /etc/my.cnf
sudo rm -rf /etc/my.cnf
vim /etc/my.cnf
/usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
chown -R mysql /usr/local/mysql/var
chgrp -R mysql /usr/local/mysql/.
cp support-files/mysql.server /etc/init.d/mysql
cat > /etc/ld.so.conf.d/mysql.conf<<EOF
/usr/local/mysql/lib
/usr/local/lib
EOF

ldconfig
/etc/init.d/mysql start
ps -ef|grep mysql
ln -s /usr/local/mysql/lib/mysql /usr/lib/mysql
ln -s /usr/local/mysql/include/mysql /usr/include/mysql
ln -s /usr/local/mysql/bin/mysql /usr/bin/mysql
ln -s /usr/local/mysql/bin/mysqldump /usr/bin/mysqldump
ln -s /usr/local/mysql/bin/myisamchk /usr/bin/myisamchk
ln -s /usr/local/mysql/bin/mysqld_safe /usr/bin/mysqld_safe
mysql -uroot -p

update user set password=password('123456') where user='root';
flush privileges;


mysql -uroot -p123456
shutdown now
set +o history–;export LANG="en_US.UTF-8";export LANGUAGE="en_US.UTF-8";top
wget http://mirrors.sohu.com/php/php-7.4.0.tar.gz
wget http://mirrors.sohu.com/php/php-5.3.28.tar.gz
wget http://down1.chinaunix.net/distfiles/libiconv-1.14.tar.gz
wget http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz
cd libiconv-1.15
./configure
make -j 2&& make install
cd ..
wget http://downloads.sourceforge.net/mcrypt/libmcrypt-2.5.8.tar.gz
tar -zxvf libmcrypt-2.5.8.tar.gz 
cd libmcrypt-2.5.8
./configure
make -j 2&& make install
ldconfig
cd libltdl/
./configure --enable-ltdl-install
make && make install
cd ../../
wget http://downloads.sourceforge.net/mhash/mhash-0.9.9.9.tar.gz
tar -zxvf mhash-0.9.9.9.tar.gz 
cd mhash-0.9.9.9
./configure
make -j 2&& make install
cd ../
tar -zxvf php-5.3.28.tar.gz 
cd php-5.3.28
./configure --prefix=/usr/local/php --with-config-file-path=/usr/local/php/etc --enable-fpm --with-fpm-user=www --with-fpm-group=www --with-mysql=mysqlnd --with-mysqli=mysqlnd --with-pdo-mysql=mysqlnd --with-iconv-dir --with-freetype-dir --with-jpeg-dir --with-png-dir --with-zlib --with-libxml-dir=/usr --enable-xml --disable-rpath --enable-magic-quotes --enable-safe-mode --enable-bcmath --enable-shmop --enable-sysvsem --enable-inline-optimization --with-curl --enable-mbregex --enable-mbstring --with-mcrypt --enable-ftp --with-gd --enable-gd-native-ttf --with-openssl --with-mhash --enable-pcntl --enable-sockets --with-xmlrpc --enable-zip --enable-soap --without-pear --with-gettext --disable-fileinfo
make -j 2 ZEND_EXTRA_LIBS='-liconv' && make install
cp php.ini-production /usr/local/php/etc/php.ini
sed -i 's/post_max_size = 8M/post_max_size = 50M/g' /usr/local/php/etc/php.ini
sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 50M/g' /usr/local/php/etc/php.ini
sed -i 's/;date.timezone =/date.timezone = PRC/g' /usr/local/php/etc/php.ini
sed -i 's/short_open_tag = Off/short_open_tag = On/g' /usr/local/php/etc/php.ini
sed -i 's/; cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /usr/local/php/etc/php.ini
sed -i 's/; cgi.fix_pathinfo=0/cgi.fix_pathinfo=0/g' /usr/local/php/etc/php.ini
sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /usr/local/php/etc/php.ini
sed -i 's/max_execution_time = 30/max_execution_time = 300/g' /usr/local/php/etc/php.ini
sed -i 's/register_long_arrays = On/;register_long_arrays = On/g' /usr/local/php/etc/php.ini
sed -i 's/magic_quotes_gpc = On/;magic_quotes_gpc = On/g' /usr/local/php/etc/php.ini
sed -i 's/disable_functions =.*/disable_functions = passthru,exec,system,chroot,scandir,chgrp,chown,shell_exec,proc_open,proc_get_status,ini_alter,ini_restore,dl,openlog,syslog,readlink,symlink,popepassthru,stream_socket_server/g' /usr/local/php/etc/php.ini
ln -s /usr/local/php/bin/php /usr/bin/php
ln -s /usr/local/php/bin/phpize /usr/bin/phpize
ln -s /usr/local/php/sbin/php-fpm /usr/bin/php-fpm
cd ..
mkdir -p /usr/local/zend/
 wget http://downloads.zend.com/guard/5.5.0/ZendGuardLoader-php-5.3-linux-glibc23-x86_64.tar.gz
tar -zxvf ZendGuardLoader-php-5.3-linux-glibc23-x86_64.tar.gz 
cp ZendGuardLoader-php-5.3-linux-glibc23-x86_64/php-5.3.x/ZendGuardLoader.so /usr/local/zend/
cat >>/usr/local/php/etc/php.ini<<EOF
;

cat >>/usr/local/php/etc/php.ini<<EOF
;eaccelerator
;ionCube
[Zend Optimizer]
zend_extension=/usr/local/zend/ZendGuardLoader.so
zend_loader.enable=1
zend_loader.disable_licensing=0
zend_loader.obfuscation_level_support=3
zend_loader.license_path=
EOF

cd ..
cat >/usr/local/php/etc/php-fpm.conf<<EOF
[global]
pid = /usr/local/php/var/run/php-fpm.pid
error_log = /usr/local/php/var/log/php-fpm.log
log_level = notice
[www]
listen = /tmp/php-cgi.sock
listen.backlog = -1
listen.allowed_clients = 192.168.223.131
listen.owner = www
listen.group = www
listen.mode = 0666
user = www
group = www
pm = dynamic
pm.max_children = 10
pm.start_servers = 2
pm.min_spare_servers = 1
pm.max_spare_servers = 6
request_terminate_timeout = 100
request_slowlog_timeout = 0
slowlog = var/log/slow.log
EOF

vim /etc/init.d/php-fpm
chmod +x /etc/init.d/php-fpm
groupadd www
useradd -s /sbin/nologin -g www www
/etc/init.d/php-fpm start
vim /etc/init.d/php-fpm
chmod +x /etc/init.d/php-fpm
/etc/init.d/php-fpm start
cd /root
wget http://nginx.org/download/nginx-1.6.0.tar.gz
wget http://down1.chinaunix.net/distfiles/pcre-8.12.tar.bz2
wget https://netix.dl.sourceforge.net/project/pcre/pcre/8.40/pcre-8.40.tar.gz
tar -zxvf pcre-8.40.tar.gz 
cd pcre-8.40
./configure
make -j 2&& make install
cd ..
tar -zxvf nginx-1.6.0.tar.gz 
cd nginx-1.6.0
./configure --user=www --group=www --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module --with-http_gzip_static_module --with-ipv6
make -j 2&& make install
pwd
cd ..
ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx
vim /usr/local/nginx/conf/nginx.conf
sudo rm -rf  /usr/local/nginx/conf/nginx.conf
vim /usr/local/nginx/conf/nginx.conf
mkdir -p /home/wwwroot/default
chmod +w /home/wwwroot/default
mkdir -p /home/wwwlogs
chmod 777 /home/wwwlogs
 
chown -R www:www /home/wwwroot/default
vim /etc/init.d/nginx
chmod +x /etc/init.d/nginx
cat >/home/wwwroot/default/index.php<<EOF
<?
phpinfo();
?>
EOF

/etc/init.d/nginx start
ps -ef|grep nginx

systemctl stop firewalld
http://192.168.13.108/index.php

vim /etc/init.d/nginx
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
setenforce 0
service iptables stop
pwd
wget http://download.redis.io/releases/redis-2.8.19.tar.gz
tar -zxvf redis-2.8.19.tar.gz.1 
rm -rf redis-2.8.19.tar.gz
cd redis-2.8.19
make PREFIX=/usr/local/redis install

mkdir -p /usr/local/redis/etc/
cp redis.conf /usr/local/redis/etc/
sed -i 's/daemonize no/daemonize yes/g' /usr/local/redis/etc/redis.conf
cd ..
vim /etc/init.d/redis
chmod +x /etc/init.d/redis
/etc/init.d/redis start
ps -ef|grep redis
vim /etc/init.d/php-fpm
/etc/init.d/php-fpm start
vim /etc/init.d/nginx
/etc/init.d/nginx start
chkconfig --level 345 php-fpm on
chkconfig --level 345 nginx on
chkconfig --level 345 mysql on
chkconfig --level 345 redis on
wget http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-4.9.2/gcc-4.9.2.tar.gz
ls
rm -rf gcc-4.9.2.tar.gz 
rm -rf redis-2.8.19.tar.gz.1 
tar -zxvf gcc-4.9.2.tar.gz 
cd gcc-4.9.2
./contrib/download_prerequisites
mkdir gcc-build-4.9.2
cd gcc-build-4.9.2/
../configure --prefix=/usr -enable-checking=release -enable-languages=c,c++ -disable-multilib
make -j 2&& make install
export LANG="en_US.UTF-8";export LANGUAGE="en_US.UTF-8";top
ip add
tar -zxvf libiconv-1.15.tar.gz 
cd libiconv-1.15
reboot
tar -zxvf termcap-1.3.1.tar.gz 
cd termcap-1.3.1
./configure --prefix=/usr
make -j 2&& make install
cd ..
tar -zxvf gdb-7.9.tar.gz 
cd gdb-7.9
./configure --prefix=/usr
make -j 2&& make install
reboot
set +o history–;export LANG="en_US.UTF-8";export LANGUAGE="en_US.UTF-8";top
ip add
tar -zxvf protobuf-2.6.1.tar.gz 
cd protobuf-2.6.1
./configure --prefix=/usr/local/protobuf
make -j 2&& make install
cd ..
git clone https://gitee.com/mirrors/teamtalk.git
mv Teamtalk TeamTalk
mkdir -p /root/TeamTalk/server/src/base/pb/lib/linux/
cp /usr/local/protobuf/lib/libprotobuf-lite.a /root/TeamTalk/server/src/base/pb/lib/linux/
cp  -r /usr/local/protobuf/include/* /root/TeamTalk/server/src/base/pb/
cd TeamTalk/pb/
export PATH=$PATH:/usr/local/protobuf/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/protobuf/lib
sh create.sh 
sh sync.sh 
cd /root/TeamTalk/server/src
sh make_log4cxx.sh
sh make_hiredis.sh
vim db_proxy_server/business/InterLogin.cpp
cd ../../
pwd
cd server/src/db_proxy_server/
vim CMakeLists.txt 
cd ../
sh build.sh version 1.0.0
ls
cd src/
ls
sh build.sh version 1.0.0
cd ..
ls
tar -zxvf im-server-1.0.0.tar.gz 
cd im-server-1.0.0
shutdown now
set +o history–;export LANG="en_US.UTF-8";export LANGUAGE="en_US.UTF-8";top
export LANG="en_US.UTF-8";export LANGUAGE="en_US.UTF-8";top
ip add
ping baidu.com
shutdown now
mysql -uroot -p123456
cd /TeamTalk-master/server/src
cd TeamTalk-master/server/src
cd /root/TeamTalk-master/server/src
pwd
ls
cd /root/TeamTalk/server/src
ls
cd ..
ls
cd im-server-1.0.0
vim db_proxy_server/dbproxyserver.conf
rm -rf db_proxy_server/dbproxyserver.conf 
vim db_proxy_server/dbproxyserver.conf
rm -rf file_server/fileserver.conf 
vim file_server/fileserver.conf 
rm -rf http_msg_server/httpmsgserver.conf 
vim http_msg_server/httpmsgserver.conf 
rm -rf login_server/loginserver.conf 
vim  login_server/loginserver.conf 
rm -rf msg_server/msgserver.conf 
vim msg_server/msgserver.conf
rm -rf push_server/pushserver.conf 
vim push_server/pushserver.conf 
rm -rf route_server/routeserver.conf 
vim route_server/routeserver.conf 
chmod 777 sync_lib_for_zip.sh
./sync_lib_for_zip.sh
/etc/init.d/redis start
./restart.sh db_proxy_server
./restart.sh file_server
./restart.sh msfs
./restart.sh route_server
./restart.sh http_msg_server
./restart.sh login_server
./restart.sh msg_server
ps -ef|grep server
./restart.sh db_proxy_server
ps -ef|grep server
cd db_proxy_server/
../daeml db_proxy_server 
ps -ef|grep server
chmod 777 db_proxy_server 
../daeml db_proxy_server 
ps -ef|grep server
vim db_proxy_server/dbproxyserver.conf
cd ..
vim db_proxy_server/dbproxyserver.conf
ls
cd ..
cd src/
ls
chmod 777 make_protobuf.sh 
./make_protobuf.sh 
chmod 777 make_log4cxx.sh
./make_log4cxx.sh 
./sync_lib_for_zip.sh
cd ..
ls
cd im-server-1.0.0
ls
./sync_lib_for_zip.sh
ps -ef|grep server
ps -ef|grep mysql
cd db_proxy_server/
./db_proxy_server 
ps -ef|grep server
vim dbproxyserver.conf 
./db_proxy_server 
ps -ef|grep server
../daeml db_proxy_server 
ps -ef|grep server
grant select,insert,update,delete on teamtalk.* to 'teamtalk'@'127.0.0.1' identified by '123456';
mysql -uroot -p123456
../daeml db_proxy_server 
ps -ef|grep server
mysql -uroot -p123456
../daeml db_proxy_server 
ps -ef|grep server
./db_proxy_server 
ps -ef|grep server
/etc/init.d/redis restart
/etc/init.d/mysql restart
ps -ef|grep redis
ps -ef|grep mysql
./db_proxy_server 
ps -ef|grep server
cd ..
ls
cd msfs/
cp msfs.conf.example msgs.conf
vim msgs.conf 
../daeml msfs
ps -ef|grep server
cd ..
ls
cd db_proxy_server/
ls
cd log
ls
vim default.log 
chkconfig iptables off
chkconfig   iptables off
service   iptables stop
systemctl stop firewalld
cd ..
./db_proxy_server 
ps -ef|grep server
../daeml db_proxy_server 
ps -ef|grep server
vi log/default.log 
../daeml db_proxy_server 
vi log/default.log 
rm -rf log/default.log 
../daeml db_proxy_server 
vi log/default.log 
rm -rf log/default.log 
ls
vim dbproxyserver.conf 
rm -rf log/default.log 
../daeml db_proxy_server 
vi log/default.log 
rm -rf log/default.log 
vim dbproxyserver.conf 
../daeml db_proxy_server 
vim dbproxyserver.conf 
vi log/default.log 
ps -ef|grep server
cd ..
ps -ef|grep server
./restart.sh file_server
ps -ef|grep server
./restart.sh msfs
ls
cd msfs/
../daeml msfs
ps -ef|grep server
cd ..
./restart.sh msfs
./restart.sh route_server
ps -ef|grep server
./restart.sh http_msg_server
ps -ef|grep server
./restart.sh login_server
ps -ef|grep server
./restart.sh msg_server
ps -ef|grep server
rm -rf msg_server/log/default.log 
./restart.sh msg_server
vi  msg_server/log/default.log 
vim  msg_server/msgserver.conf 
cd msg_server/
ls
../daeml msg_server 
ps -ef|grep server
vi  msg_server/log/default.log 
cd ..
vi  msg_server/log/default.log 
vim  msg_server/msgserver.conf 
cd msg_server/
../daeml msg_server 
ps -ef|grep server
cd ..
./restart.sh push_server
ps -ef|grep server
ip add
shutdown now
cd /root/TeamTalk/server/im-server-1.0/db_proxy_server


cp -r ~/TeamTalk/php/* 


grant select,insert,update,delete on teamtalk.* to 'root'@'%' identified by '123456';
flush privileges;
cp .bash_history  history.txt

http://192.168.13.109:8080/msg_server
{ "backupIP" : "192.168.13.109", "code" : 0, "discovery" : "http://192.168.13.109/api/discovery", "msfsBackup" : "http://192.168.13.109:8700/", "msfsPrior" : "http://192.168.13.109:8700/", "msg" : "", "port" : "8000", "priorIP" : "192.168.13.109" }