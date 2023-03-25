/bin/sh ./../mkinstalldirs /usr/local/include
 /usr/bin/install -c -m 644 ltdl.h /usr/local/include/ltdl.h
make[1]: 离开目录“/root/teamtalk/libmcrypt-2.5.8/libltdl”
[root@10 libltdl]# cd /.
[root@10 /]# cd root
[root@10 ~]# ls
anaconda-ks.cfg  first.txt  im  mysql-5.6.35  mysql-5.6.35.tar.gz  teamtalk
[root@10 ~]# wget http://downloads.sourceforge.net/mhash/mhash-0.9.9.9.tar.gz
--2018-08-25 18:21:09--  http://downloads.sourceforge.net/mhash/mhash-0.9.9.9.tar.gz
正在解析主机 downloads.sourceforge.net (downloads.sourceforge.net)... 216.105.38.13
正在连接 downloads.sourceforge.net (downloads.sourceforge.net)|216.105.38.13|:80... 已连接。
已发出 HTTP 请求，正在等待回应... 301 Moved Permanently
位置：http://downloads.sourceforge.net/project/mhash/mhash/0.9.9.9/mhash-0.9.9.9.tar.gz [跟随至新的 URL]
--2018-08-25 18:21:10--  http://downloads.sourceforge.net/project/mhash/mhash/0.9.9.9/mhash-0.9.9.9.tar.gz
再次使用存在的到 downloads.sourceforge.net:80 的连接。
已发出 HTTP 请求，正在等待回应... 302 Found   
位置：https://nchc.dl.sourceforge.net/project/mhash/mhash/0.9.9.9/mhash-0.9.9.9.tar.gz [跟随至新的 URL]
--2018-08-25 18:21:10--  https://nchc.dl.sourceforge.net/project/mhash/mhash/0.9.9.9/mhash-0.9.9.9.tar.gz
正在解析主机 nchc.dl.sourceforge.net (nchc.dl.sourceforge.net)... 211.79.60.17, 2001:e10:ffff:1f02::17
正在连接 nchc.dl.sourceforge.net (nchc.dl.sourceforge.net)|211.79.60.17|:443... 已连接。
已发出 HTTP 请求，正在等待回应... 200 OK
长度：931437 (910K) [application/x-gzip]
正在保存至: “mhash-0.9.9.9.tar.gz”

100%[================================================>] 931,437     1.69MB/s 用时 0.5s   

2018-08-25 18:21:11 (1.69 MB/s) - 已保存 “mhash-0.9.9.9.tar.gz” [931437/931437])

[root@10 ~]# ls
anaconda-ks.cfg  im                    mysql-5.6.35         teamtalk
first.txt        mhash-0.9.9.9.tar.gz  mysql-5.6.35.tar.gz
[root@10 ~]# history
    1  ip addr
    2  pwd
    3  ls
    4  cd ..
    5  ls
    6  yum
    7  yum -y install gcc
    8  gcc -version
    9  gcc --version
   10  g++ --version
   11  yum -y install g++
   12  yum -y update
   13  yum -y remove httpd* php* mysql-server mysql mysql-libs php-mysql
   14  yum -y install wget vim git texinfo patch make cmake gcc gcc-c++ gcc-g77 flex bison file libtool libtool-libs autoconf kernel-devel libjpeg libjpeg-devel libpng libpng-devel libpng10 libpng10-devel gd gd-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glib2 glib2-devel bzip2 bzip2-devel libevent libevent-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel vim-minimal nano fonts-chinese gettext gettext-devel ncurses-devel gmp-devel pspell-devel unzip libcap diffutils
   15  gcc --version
   16  g++ --version
   17  rpm -qa | grep mysql
   18  make --version
   19  makefile --version
   20  cmake --version
   21  wget http://cdn.mysql.com/Downloads/MySQL-5.6/mysql-5.6.23.tar.gz
   22  history
   23  wget http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.23.tar.gz
   24  tar zxvf mysql-5.6.23.tar.gz
   25  ls
   26  history
   27  cp -a mysql-5.6.23.tar.gz  /root/mysql-5.6.23
   28  cd /root
   29  ls
   30  cp mysql-5.6.23 mysql-5.6.23.tar.gz
   31  ls
   32  rm mysql-5.6.23
   33  ls
   34  tar zxvf mysql-5.6.23.tar.gz
   35  ls
   36  cd ..
   37  ls
   38  rm -y mysql-5.6.23
   39  rm -rf  mysql-5.6.23
   40  ls
   41  rm -rf  mysql-5.6.23.tar.gz 
   42  ls
   43  cd /root/
   44  ls
   45  cd mysql-5.6.23
   46  cd ..
   47  cmake -version
   48  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
   49  ls
   50  cd mysql-5.6.23
   51  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
   52  vim /root/mysql-5.6.23/CMakeFiles/CMakeOutput.log
   53  history
   54  vim /root/mysql-5.6.23/CMakeFiles/CMakeOutput.log
   55  vim /root/mysql-5.6.23/CMakeFiles/CMakeError.log 
   56  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
   57  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DMYSQL_DATADIR=/data/mydata -DSYSCONFDIR=/etc -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_ARCHIVE_STORAGE_ENGINE=1 -DWITH_BLACKHOLE_STORAGE_ENGINE=1 -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_LIBWRAP=0 -DMYSQL_UNIX_ADDR=/tmp/mysql.sock -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci 
   58  cmake --version
   59  yum install –y openssl openssl-devel ncurses ncurses-devel
   60  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DMYSQL_DATADIR=/data/mydata -DSYSCONFDIR=/etc -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_ARCHIVE_STORAGE_ENGINE=1 -DWITH_BLACKHOLE_STORAGE_ENGINE=1 -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_LIBWRAP=0 -DMYSQL_UNIX_ADDR=/tmp/mysql.sock -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci 
   61  rm  -rf CMakeCache.txt 
   62  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DMYSQL_DATADIR=/data/mydata -DSYSCONFDIR=/etc -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_ARCHIVE_STORAGE_ENGINE=1 -DWITH_BLACKHOLE_STORAGE_ENGINE=1 -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_LIBWRAP=0 -DMYSQL_UNIX_ADDR=/tmp/mysql.sock -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci 
   63  rm  -rf CMakeCache.txt 
   64  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
   65  ls
   66  rm  -rf /CMakeFiles/CMakeError.log
   67  rm  -rf /CMakeFiles/CMakeOutput.log
   68  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
   69  yum -y install openssl openssl-devel
   70  rm  -rf CMakeCache.txt 
   71  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
   72  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1 -DENABLE_DOWNLOADS=1
   73  rm  -rf CMakeCache.txt 
   74  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1 -DENABLE_DOWNLOADS=1
   75  cd ..
   76  ls
   77  rm -rf mysql-5.6.23
   78  ls
   79  rm -rf mysql-5.6.23.tar.gz 
   80  ls
   81  find / -name mysql
   82  rpm -qa | grep -i mysql
   83  find / -name mysql
   84  yum -y remove mysql-libs*
   85  rpm -qa|grep mariadb
   86  find / -name mysql
   87  rpm -qa | grep -i mysql
   88  find / -name mysql
   89  yum -y remove  mysql*
   90  find / -name mysql
   91  cd /etc/selinux/targeted/active/modules/100/mysql
   92  ls
   93  cd /usr/lib64/mysql
   94  ls
   95  cd ..
   96  yum -y rm -rf mysql/
   97  rm -rf mysql/
   98  ls
   99  find / -name mysql
  100  cd /etc/selinux/targeted/active/modules/100/mysql
  101  cd ..
  102  rm -rf mysql/
  103  ls
  104  find / -name mysql
  105  history
  106  pwd
  107  cd .
  108  cd -
  109  cd /
  110  cd 
  111  pwd
  112  history>first.txt
  113  ls
  114  vim first.txt
  115  ncurses-devel --version
  116  yum -y install ncurses-devel
  117  yum -y install autoconf
  118  yum -y install perl perl-devel
  119  wget https://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.35.tar.gz
  120  pwd
  121  ls
  122  tar -zxvf mysql-5.6.35.tar.gz 
  123  cd mysql-5.6.35
  124  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1 -DENABLE_DOWNLOADS=1
  125  make -j 2 && make install
  126  mysql -uroot -p
  127  groupadd mysql
  128  useradd -s /sbin/nologin -M -g mysql mysql
  129  vim /etc/my.cnf
  130  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
  131  chown -R mysql /usr/local/mysql/var
  132  chgrp -R mysql /usr/local/mysql/.
  133  cp support-files/mysql.server /etc/init.d/mysql
  134  chmod 755 /etc/init.d/mysql
  135  cat > /etc/ld.so.conf.d/mysql.conf<<EOF
  136   
    cat > /etc/ld.so.conf.d/mysql.conf<<EOF
    /usr/local/mysql/lib
    /usr/local/lib
    EOF
  141  ldconfig
  142  /etc/init.d/mysql start
  143  ps -ef|grep mysql
  144  ln -s /usr/local/mysql/lib/mysql /usr/lib/mysql
  145  ln -s /usr/local/mysql/include/mysql /usr/include/mysql
  146  ln -s /usr/local/mysql/bin/mysql /usr/bin/mysql
  147  ln -s /usr/local/mysql/bin/mysqldump /usr/bin/mysqldump
  148  ln -s /usr/local/mysql/bin/myisamchk /usr/bin/myisamchk
  149  ln -s /usr/local/mysql/bin/mysqld_safe /usr/bin/mysqld_safe
  150  mysql -uroot -p
  151  /etc/init.d/mysqld stop 
  152  quit # /etc/init.d/mysqld restart 
  153  /etc/init.d/mysql stop
  154  mysqld_safe --user=mysql --skip-grant-tables --skip-networking
  155  history
  156  yum -y install mariadb*
  157  yum -y install mariadb-client
  158  ls
  159  mkdir im
  160  ls
  161  cd im/
  162  ls
  163  git clone  https://github.com/baloonwj/flamingo.git
  164  ls
  165  cd flamingo/
  166  ls
  167  cd flamingoserver/
  168  ls
  169  pwq
  170  pwd
  171  ls
  172  ll
  173  cd etc
  174  ls
  175  vim chatserver.conf 
  176  pwd
  177  cd ..
  178  cmake.
  179  cmake --version
  180  export PATH=/Applications/CMake.app/Contents/bin:$PATH
  181  cmake.
  182  cmake .
  183  pwd
  184  ls
  185  pwd
  186  cd /.
  187  ls
  188  cd root
  189  ls
  190  cd im
  191  ls
  192  epel --version
  193  yum -y install epel-replease
  194  rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
  195  cd ..
  196  ls
  197  mkdir teamtalk
  198  ls
  199  cd teamtalk/
  200  wget http://down1.chinaunix.net/distfiles/libiconv-1.14.tar.gz
  201  wget http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz 
  202  tar -zxvf libiconv-1.15.tar.gz 
  203  ls
  204  cd libiconv-1.15 /root/libiconv-1.15
  205  cd ..
  206  cp libiconv-1.15 /root/libiconv-1.15
  207  ls
  208  cd ..
  209  ls
  210  cd -
  211  ls
  
  212  cd libiconv-1.15
  213  ./configure --prefix=/usr/local/libiconv 
  214  make -j 2&& make install
  215  cd ..
  216  wget http://downloads.sourceforge.net/mcrypt/libmcrypt-2.5.8.tar.gz
  217  tar -zxvf libmcrypt-2.5.8.tar.gz 
  218  cd libc
  219  cd libmcrypt-2.5.8
  220  ./configure 
  221  make -j 2&& make install
  222  ldconfig 
  223  cd libltdl/
  224  ./configure --enable-ltdl-install
  225  make && make install 
  226  cd /.
  227  cd root
  228  ls
  229  wget http://downloads.sourceforge.net/mhash/mhash-0.9.9.9.tar.gz
  230  ls
  231  history
[root@10 ~]# 

source /root/TeamTalk/auto_setup/mariadb/conf/ttopen.sql




10-15 16:44:55.624 31357-31357/com.manxapp.manxapp I/TAG: User Agent:Mozilla/5.0 (Linux; Android 8.0.0; LLD-AL10 Build/HONORLLD-AL10; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 Mobile Safari/537.36
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36
Type `help' to learn how to use Xshell prompt.
[c:\~]$ 

/root/TeamTalk/auto_setup/mariadb/conf/ttopen.sql


Connecting to 10.5.35.175:22...
Connection established.
To escape to local shell, press 'Ctrl+Alt+]'.

Last login: Mon Aug 27 19:21:15 2018 from 10.5.35.42
[root@10 ~]# mysql -uroot -p
-bash: mysql: 未找到命令
[root@10 ~]# ls
anaconda-ks.cfg  flamingo  flamingo-master  master.zip  mysql-5.6.35  mysql-5.6.35.tar.gz  TeamTalk
[root@10 ~]# history
    1  yum -y update
    2  wget https://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.35.tar.gz
    3  yum -y install ncurses-devel
    4  yum -y install autoconf
    5  yum -y install perl perl-devel
    6  git clone  https://github.com/baloonwj/flamingo.git
    7  cd flamingo/
    8  ls
    9  cd flamingoserver/
   10  cmake .
   11  ls
   12  cd ..
   13  rm -rf flamingo/
   14  ls
   15  wget https://github.com/baloonwj/flamingo/archive/master.zip
   16  ls
   17  tar -zxvf master.zip 
   18  unzip master.zip 
   
   19  ls
   20  cd flamingo-master/
   21  ls
   22  cd flamingoserver/
   23  cmake .
   24  cd ..
   25  git clone  https://github.com/baloonwj/flamingo.git
   26  ls
   27  cd flamingo
   28  cd flamingoserver/
   29  cmake .
   30  history
   31  git clone https://github.com/meili/TeamTalk.git
   32  ls
   33  cd TeamTalk/
   34  history
   35  yum -y remove httpd* php* mysql-server mysql mysql-libs php-mysql
   36  yum -y install wget vim git texinfo patch make cmake gcc gcc-c++ gcc-g77 flex bison file libtool libtool-libs autoconf kernel-devel libjpeg libjpeg-devel libpng libpng-devel libpng10 libpng10-devel gd gd-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glib2 glib2-devel bzip2 bzip2-devel libevent libevent-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel vim-minimal nano fonts-chinese gettext gettext-devel ncurses-devel gmp-devel pspell-devel unzip libcap diffutils
   37  tar -zxvf mysql-5.6.35.tar.gz 
   38  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1 -DENABLE_DOWNLOADS=1
   39  cd mysql-5.6.35
   40  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1 -DENABLE_DOWNLOADS=1
   41  make -j 2 && make install
   42  groupadd mysql
   43  useradd -s /sbin/nologin -M -g mysql mysql
   44  vim /etc/my.cnf
   45  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
   46  chown -R mysql /usr/local/mysql/var
   47  chgrp -R mysql /usr/local/mysql/.
   48  cp support-files/mysql.server /etc/init.d/mysql
   49  chmod 755 /etc/init.d/mysql
   50   
   51  cat > /etc/ld.so.conf.d/mysql.conf<<EOF
   52  /usr/local/mysql/lib
   53  /usr/local/lib
   54  EOF
   55  ldconfig
   56  /etc/init.d/mysql start
   57  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
   58  vim /etc/my.cnf
   59  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
   60  halt
   61  mysql -uroot -p
   62  ls
   63  history
[root@10 ~]# 

/root/TeamTalk/server/src/db_proxy_server  vim dbproxyserver.conf 

////////////////////////////////////////////////////////////////////////////////////////////////////////////
    1  yum update
    2  yum -y remove httpd* php* mysql-server mysql mysql-libs php-mysql
    3  yum -y install wget vim git texinfo patch make cmake gcc gcc-c++ gcc-g77 flex bison file libtool libtool-libs autoconf kernel-devel libjpeg libjpeg-devel libpng libpng-devel libpng10 libpng10-devel gd gd-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glib2 glib2-devel bzip2 bzip2-devel libevent libevent-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel vim-minimal nano fonts-chinese gettext gettext-devel ncurses-devel gmp-devel pspell-devel unzip libcap diffutils
    4  wget https://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.35.tar.gz
    5  tar -zxvf mysql-5.6.35.tar.gz 
    6  cd mysql-5.6.35
    7  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1 -DENABLE_DOWNLOADS=1
    8  make -j 2 && make install
    9  groupadd mysql
   10  useradd -s /sbin/nologin -M -g mysql mysql
   11  vim /etc/my.cnf
   12  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
   13  vim /etc/my.cnf
   14  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
   15  vim /etc/my.cnf
   16  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
   17  rm -rf /etc/my.cnf
   18  vim /etc/my.cnf
   19  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
   20  groupadd mysql
   21  useradd -s /sbin/nologin -M -g mysql mysql
   22  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysq
   23  rm -rf /etc/my.cnf
   24  vim /etc/my.cnf
   25  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysq
   26  mysql -uroot -p
   27  wget http://download.redis.io/releases/redis-2.8.19.tar.gz
   28  ls
   29  cd ..
   30  ls
   31  cd mysql-5.6.35
   32  ls
   33  cd ..
   34  wget http://download.redis.io/releases/redis-2.8.19.tar.gz
   35  tar -zxvf redis-2.8.19.tar.gz 
   36  cd redis-2.8.19
   37  make PREFIX=/usr/loacl/redis install
   38  mkdir -p /usr/local/redis/etc/
   39  cp redis.conf  /usr/local/redis/etc/
   40  sed -i 's/daemonize no/daemonize yes/g' /usr/local/redis/etc/redis.conf
   41  cd ..
   42  vim /etc/init.d/redis
   43  chmod +x /etc/init.d/redis
   44  /etc/init.d/redis start
   45  cp redis.conf  /usr/local/redis/etc/
   46  cd redis-2.8.19
   47  cp redis.conf  /usr/local/redis/etc/
   48  sed -i 's/daemonize no/daemonize yes/g' /usr/local/redis/etc/redis.conf
   49  cd ..
   50  /etc/init.d/redis start
   51  ps -ef|grep redis
   52  ls
   53  git clone https://github.com/meili/TeamTalk.git
   54  ls
   55  cd TeamTalk/
   56  ls
   57  cd auto_setup/mariadb/conf/
   58  pwd
   59  protobuf: make_protobuf.sh 
   60  pwd
   61  cd /.
   62  ls
   63  cd root
   64  cd TeamTalk/
   65  protobuf: make_protobuf.sh 
   66  cd /root
   67  ls
   68  wget https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz
   69  tar -zxvf protobuf-2.6.1.tar.gz 
   70  cd protobuf-2.6.1
   71  ./configure --prefix=/usr/local/protobuf
   72  make -j 2 && make install
   73  cd /root
   74  wget http://sourceforge.net/project/showfiles.php?group_id=4286&package_id=4300&release_id=645636
   75  mcrypt-2.6.8.tar.gz
   76  wget http://sourceforge.net/project/showfiles.php?group_id=4286&package_id=4300&release_id=645636/mcrypt-2.6.8.tar.gz
   77  wget http://down1.chinaunix.net/distfiles/libiconv-1.14.tar.gz
   78  wget http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.14.tar.gz
   79  tar -zxvf libiconv-1.14.tar.gz 
   80  cd libiconv-1.14
   81  ./configure 
   82  make -j 2 && make install
   83  ./configure 
   84  make -j 2 && make install
   85  wget http://down1.chinaunix.net/distfiles/libiconv-1.14.tar.gz
   86  ./configure 
   87  make -j 2 && make install
   88  ls
   89  rm -rf mysql-5.6.35.tar.gz 
   90  wget https://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.35.tar.gz
   91  rm -rf mysql-5.6.35
   92  ls
   93  tar -zxvf mysql-5.6.35.tar.gz 
   94  cd mysql-5.6.35
   95  cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1 -DENABLE_DOWNLOADS=1
   96  make -j 2 && make install
   97  groupadd mysql
   98  useradd -s /sbin/nologin -M -g mysql mysql
   99  vim /etc/my.cnf
  100  rm -rf /etc/my.cnf
  101  vim /etc/my.cnf
  102  /usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
  103  chown -R mysql /usr/local/mysql/var
  104  chgrp -R mysql /usr/local/mysql/.
  105  cp support-files/mysql.server /etc/init.d/mysql
  106  chmod 755 /etc/init.d/mysql
  107  cat > /etc/ld.so.conf.d/mysql.conf<<EOF
  108  /usr/local/mysql/lib
  109  /usr/local/lib
  110  EOF
  111  ldconfig
  112  /etc/init.d/mysql start
  113  ps -ef|grep mysql
  114  ln -s /usr/local/mysql/lib/mysql /usr/lib/mysql
  115  ln -s /usr/local/mysql/include/mysql /usr/include/mysql
  116  ln -s /usr/local/mysql/bin/mysql /usr/bin/mysql
  117  ln -s /usr/local/mysql/bin/mysqldump /usr/bin/mysqldump
  118  ln -s /usr/local/mysql/bin/myisamchk /usr/bin/myisamchk
  119  ln -s /usr/local/mysql/bin/mysqld_safe /usr/bin/mysqld_safe
  120  mysql -uroot -p
  121  /etc/init.d/mysql start
  122  mysql -uroot -p
  123  ps -ef|grep mysql
  124  /etc/init.d/mysql stop
  125  /etc/init.d/mysql start
  126  mysql -uroot -p
  127  vim /etc/my.cnf
  128  mysqladmin -u root password "newpass"
  129  /etc/init.d/mysql start
  130  service mysqld status;
  131  /etc/init.d/mysql stop
  132  mysqld_safe  --skip-grant-tables &
  133  mysql -u root
  134  mysql -uroot -p
  135  shutdown -r now
  136  cd libiconv-1.14
  137  ls
  138  ./configure 
  139  make -j 2 && make install
  140  ls
  141  cd srclib/
  142    sed -i -e '/gets is a security/d' ./stdio.in.h
  143  make -j 2 && make install
  144  cd ..
  145  ls
  146  rm -rf showfiles.php\?group_id\=4286
  147  ls
  148  rm -rf showfiles.php\?group_id\=4286.1 
  149  ls
  150  wget http://downloads.sourceforge.net/mcrypt/libmcrypt-2.5.8.tar.gz
  151  tar -zxvf libmcrypt-2.5.8.tar.gz 
  152  cd libmcrypt-2.5.8
  153  ./configure 
  154  make -j 2 && make install
  155  ldconfig
  156  cd libltdl/
  157  ./configure --enable-ltdl-install
  158  make && make install
  159  cd /root
  160  wget http://downloads.sourceforge.net/mhash/mhash-0.9.9.9.tar.gz
  161  tar -zxvf mhash-0.9.9.9.tar.gz 
  162  cd mhash-0.9.9.9
  163  ./configure 
  164  make -j 2 && make install
  165  cd ../
  166  pwd
  167  mkdir -p /usr/local/zend/
  168  wget http://downloads.zend.com/guard/5.5.0/ZendGuardLoader-php-5.3-linux-glibc23-x86_64.tar.gz
  169  tar -zxvf ZendGuardLoader-php-5.3-linux-glibc23-x86_64.tar.gz 
  170  cp ZendGuardLoader-php-5.3-linux-glibc23-x86_64/php-5.3.x/ZendGuardLoader.so /usr/local/zend/
  171  cat >>/usr/local/php/etc/php.ini<<EOF
  172  wget http://mirrors.sohu.com/nginx/nginx-1.6.0.tar.gz
  173  wget http://nginx.org/download/nginx-1.6.0.tar.gz
  174  wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.12.tar.gz
  175  wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.31.tar.gz 
  176  wget    https://netix.dl.sourceforge.net/project/pcre/pcre/8.40/pcre-8.40.tar.gz
  177  tar -zxvf   pcre-8.40.tar.gz
  178  cd pcre-8.40
  179  ./configure 
  180  make -j 2 && make install
  181  cd ..
  182  tar -zxvf nginx-1.6.0.tar.gz 
  183  cd nginx-1.6.0
  184  ./configure --user=www --group=www --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module --with-http_gzip_static_module --with-ipv6
  185  make -j 2 &&  make install
  186  cd ..
  187  ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx
  188  /usr/local/nginx/conf/nginx.conf
  189  vim /usr/local/nginx/conf/nginx.conf
  190  /usr/local/nginx/conf/nginx.conf
  191  /usr/local/nginx/sbin/nginx -s reload
  192  vim /usr/local/nginx/conf/nginx.conf
  193  rm -rf /usr/local/nginx/conf/nginx.conf
  194  vim /usr/local/nginx/conf/nginx.conf
  195  /usr/local/nginx/sbin/nginx -s reload
  196  vim /usr/local/nginx/conf/nginx.conf
  197  /usr/local/nginx/sbin/nginx -s reload
  198  wget ftp://ftp.gnu.org/gnu/termcap/termcap-1.3.1.tar.gz
  199  tar -zxvf termcap-1.3.1.tar.gz 
  200  cd termcap-1.3.1
  201  ./configure --prefix=/usr
  202  make -j 2 && make install
  203  cd /root
  204  wget http://ftp.gnu.org/gnu/gdb/gdb-7.9.tar.gz
  205  tar -zxvf gdb-7.9.tar.gz 
  206  ls
  207  cd gdb-7.9
  208  ./configure --prefix=/usr
  209  make -j 2&& make install
  210  shutdown -r now
  211  wget http://download.redis.io/releases/redis-2.8.19.tar.gz
  212  tar -zxvf redis-2.8.19
  213  ls
  214  ps -ef|grep redis
  215  rm -rf redis-2.8.19.tar.gz.1 
  216  gcc --version
  217  wget http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-4.9.2/gcc-4.9.2.tar.gz
  218  tar -zxvf gcc-4.9.2.tar.gz 
  219  cd gcc-4.9.2
  220  ./contrib/download_prerequisites 
  221  mkdir gcc-build-4.9.2
  222  cd gcc-build-4.9.2/
  223  ../configure --prefix=/usr -enable-checking=release -enable-languages=c,c++ -disable-multilib
  224  make -j 2 && make install
  225  ls
  226  redis --version
  227  ps -ef|grep redis
  228  wget ftp://ftp.gnu.org/gnu/termcap/termcap-1.3.1.tar.gz
  229  tar -zxvf termcap-1.3.1
  230  ls
  231  rm -rf termcap-1.3.1.tar.gz.1 
  232  cd termcap-1.3.1
  233  ls
  234  cd ..
  235  cd protobuf-2.6.1
  236  ./configure --prefix=/usr/local/protobuf
  237  make -j 2&& make install
  238  ls
  239  cd ..
  240  ls
  241  mkdir -p /root/TeamTalk/server/src/base/pb/lib/linux/
  242  cp /usr/local/protobuf/lib/libprotobuf-lite.a /root/TeamTalk/server/src/base/pb/lib/linux/
  243  cp  -r /usr/local/protobuf/include/* /root/TeamTalk/server/src/base/pb/
  244  cd /root/TeamTalk/pb
  245  export PATH=$PATH:/usr/local/protobuf/bin
  246  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/protobuf/lib
  247  sh create.sh
  248  sh sync.sh
  249  cd /root/TeamTalk/server/src
  250  sh make_log4cxx.sh 
  251  sh make_hiredis.sh 
  252  ls
  253  cd db_proxy_server/
  254  ls
  255  vim CMakeLists.txt 
  256  cd ..
  257  sh build.sh version 1.0.0
  258  ls
  259  cd login_server/
  260  ls
  261  vim loginserver.conf 
  262  cd ../route_server/
  263  ls
  264  vim routeserver.conf 
  265  cd ../http_msg_server/
  266  ls
  267  vim httpmsgserver.conf 
  268  cd ../msg_server/
  269  ls
  270  vim msgserver.conf 
  271  cd ../db_proxy_server/
  272  ls
  273  vim dbproxyserver.conf 
  274  mysql -uroot -p
  275  which mysql
  276  brew info mysql
  277  /etc/init.d/mysql start
  278  mysql -u root -p
  279  /usr/local/mysql/bin/mysqld_safe –skip-grant-tables &
  280  killall mysqld
  281  /etc/init.d/mysql stop
  282  /usr/local/mysql/bin/mysqld_safe –skip-grant-tables &
  283  /usr/local/mysql/bin/mysqld_safe -user=mysql &
  284  /etc/init.d/mysqld stop
  285  /etc/init.d/mysql stop
  286  mysqld_safe --skip-grant-tables &
  287  /etc/init.d/mysql stop
  288  safe_mysqld --skip-grant-tables &
  289  mysqld --skip-grant-tables &
  290  histroy
  291  history
  292  ps -ef|grep mysql
  293  mysql -u root -p
  294  /etc/init.d/mysql stop
  295  mysqld_safe  --skip-grant-tables &
  296  shutdown -r now
  297  ls
  298  cd TeamTalk/
  299  ls
  300  cd server/
  301  ls
  302  cd src/
  303  ls
  304  cd db_proxy_server/
  305  ls
  306  vim dbproxyserver.conf 
  307  pwd
  308  ps -ef|grep redis
  309  ps -ef|grep nginx
  310  ps -ef|grep mysql
  311  ps -ef|grep php-fpm
  312  service iptables stop
  313  sudo systemctl stop firewalld.service
  314  halt
  315  ps -ef|grep mysql
  316  service mysqld status
  317  service mysql status
  318  chkconfig --list
  319  chkconfig --list mysqld
  320  #netstat -tulpn
  321  netstat -tulpn
  322  yum -y netstat
  323  yum -y install netstat
  324  mysql -u team -p
  325  /etc/init.d/mysql start
  326  mysql -u team -p
  327  mysql -uroot -p
  328  mysql -u team -p
  329  mysql -uroot -p
  330  quit;
  331  /etc/init.d/mysqld restart
  332  /etc/init.d/mysql restart
  333  mysql -u root -p
  334  mysql -uteam -p
  335  mysql -u -p
  336  mysql -u root -p
  337  mysql -u -p
  338  mysql -u root -p
  339  ipaddr
  340  ip addr
  341  ifconfig
  342  mysql -uroot -p
  343  /etc/init.d/mysql restart
  344  mysql -uroot -p
  345  mysql -uflamingo -p
  346  ls
  347  make --version
  348  cmake --version
  349  gcc --version
  350  g++ --version
  351  mariadb-server --version
  352  ls
  353  git clone  https://github.com/baloonwj/flamingo.git
  354  ls
  355  cd flamingo/
  356  ls
  357  cd flamingoserver/
  358  ls
  359  cd etc
  360  vim chatserver.conf 
  361  cd /root
  362  yum -y install mariadb-server mariadb mariadb-devel
  363  systemctl start mariadb
  364  systemctl enable mariadb 
  365  systemctl start mariadb
  366  cd flamingo/flamingoserver/
  367  cmake .
  368  make
  369  ls
  370  ./chatserver -d
  371  ./fileserver -d
  372  ./imgserver -d
  373  lsof -i -Pn
  374  yum -y install lsof
  375  lsof -i -Pn
  376  gdb --version
  377  gdb chatserver
  378  vim etc/chatserver.conf 
  379  ./chatserver -d
  380  lsof -i -Pn
  381  nc -v 127.0.0.1 8888
  382  yum -y install nc
  383  nc -v 127.0.0.1 8888
  384  nc -v 10.5.35.223 8888
  385  halt
  386   lsof -i -Pn
  387  ./chatserver -d
  388  cd flamingo/flamingoserver/
  389  ./chatserver -d
  390   lsof -i -Pn
  391  nc -v 127.0.0.1 8888
  392  service iptable status
  393  service iptable stop
  394  firewall -cmd --state
  395  firewall-cmd --state
  396  systemctl list-unit-files|grep firewalld.service
  397  systemctl stop firewalld.service
  398  systemctl disable firewalld.service
  399  ls
  400  cd chatserversrc/
  401  ls
  402  halt
  403  ip addr
  404  lsof -i -Pn
  405  ls
  406  ./chatserver -d
  407  cd flamingo/flamingoserver/
  408  ./chatserver -d
  409  ./fileserver -d
  410  ./imgserver -d
  411  lsof -i -Pn
  412  mysql -uroot -p
  413  history
  414  vim etc/chatserver.conf 
  415  /etc/init.d/mysql restart
  416  mysql -uroot -p
  417  ip addr
  418  halt
  419  ls
  420   ps -ef|grep mysql
  421  history
  422   cd flamingo/flamingoserver/
  423  ./chatserver -d
  424  ./fileserver -d
  425  ./imgserver -d
  426   lsof -i -Pn
  427  /etc/init.d/mysql restart
  428  ./chatserver -d
  429   lsof -i -Pn
  430  mysql -uroot -p
  431  myslq -uroot -p
  432  mysql -uroot -p
  433  halt
  434  /etc/init.d/mysql restart
  435   cd flamingo/flamingoserver/
  436  ./chatserver -d
  437  ./fileserver -d
  438  ./imgserver -d
  439   lsof -i -Pn
  440  mysql -uroot -p
  441  mysql -u root -p
  442  mysql -uroot -p
  443  history
  444  ls
  445  cd TeamTalk/
  446  ls
  447  cd auto_setup/
  448  ls
  449  lsof -i -Pn
  450  /etc/init.d/mysql restart
  451  lsof -i -Pn
  452  yum search mysql
  453  lsof -i -Pn
  454  systemctl stop firewalld.service
  455  systemctl stop firewalld systemctl disable firewalld
  456  systemctl status httpd.service
  457  systemctl status httpd
  458  yum install -y httpd php php-fpm  php-mysql
  459  yum install -y httpd php php-fpm  php-mysqlls
  460  ls
  461  cd ..
  462  ls
  463  service httpd start
  464  service php-fpm start
  465  netstat -tunlp
  466  lsof -i -Pn
  467   cd flamingo/flamingoserver/
  468  ./chatserver -d
  469  ./fileserver -d
  470  ./imgserver -d
  471  cd /
  472  ls
  473  cd ./
  474  ls
  475  cd /root
  476  ls
  477  cd /var/
  478  ls
  479  cd www/html/
  480  ls
  481  touch test.php
  482  vi test.php
  483  cat test.php
  484  chmod -R 777 /var/www/html
  485  ls
  486  cd xinhu/
  487  ls
  488  pwd
  489  cd webmain/
  490  ls
  491  vim webmainConfig.php
  492  lsof -i -Pn
  493  ll
  494  vi webmainConfig.php
  495  pwd
  496  chmod -R 777 /var/www/html/xinhu/webmain/
  497  vim webmainConfig.php
  498  pwd
  499  cd ..
  500  cd..
  501  cd ..
  502  mkdir xin && cd xin
  503  wget http://xinhu-1251238447.file.myqcloud.com/file/xinhu_utf8_v1.8.1.zip
  504  unzip xinhu_utf8_v1.8.1.zip 
  505  ls
  506  chmod -R 755
  507  chmod -R 755 webmain/
  508  ls
  509  chmod -R 777 webmain/
  510  ll
  511  cd ..
  512  chown www:www xin
  513  chmod -R 777 xin
  514  ll
  515  halt;
  516  mysql -uroot -p 
  517  ip addr
  518  ls
  519  histroy
  520  history
  521  /etc/init.d/mysql restart
  522  /etc/init.d/mysql stop 
  523  vi /etc/my.cnf
  524  history
  525  halt
  526  ls
  527  history
[root@10 ~]#   yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && sh install.sh
https://blog.csdn.net/qooer_tech/article/details/47393569



1.下载安装配置环境  yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && sh install.sh
1.1 整个安装完成后 记录下 用户名和密码
2.访问虚拟机主机地址 端口号8888  http://10.5.35.195:8888/config
3.在面板设置的地方 设置 面板用户 和面板密码 admin admin123 admin qwe123456
3.1 选择安装环境 等待安装完成
4.建立相应的数据库名称
5.网站 添加相应的站点 并把源码放进 /www/wwwroot (www目录为步骤1生成) 目录 并修改相应目录的权限  chmod -R 777 xinhu/ xinhu中的user.cnf文件  删除掉.user.ini
5.1设置相应的站点为默认目录
leancloud   yunba.io
https://blog.csdn.net/u012129607/article/details/73835391






yum -y remove httpd* php* mysql-server mysql mysql-libs php-mysql
   14  yum -y install wget vim git texinfo patch make cmake gcc gcc-c++ gcc-g77 flex bison file libtool libtool-libs autoconf kernel-devel libjpeg libjpeg-devel libpng libpng-devel libpng10 libpng10-devel gd gd-devel freetype freetype-devel libxml2 libxml2-devel zlib zlib-devel glib2 glib2-devel bzip2 bzip2-devel libevent libevent-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel vim-minimal nano fonts-chinese gettext gettext-devel ncurses-devel gmp-devel pspell-devel unzip libcap diffutils


tar -zxvf mysql-5.6.23.tar.gz
cd mysql-5.6.23
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
make -j 2 && make install
http://dev.mysql.com/get/Downloads/

cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DMYSQL_DATADIR=/data/mydata -DSYSCONFDIR=/etc -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_ARCHIVE_STORAGE_ENGINE=1 -DWITH_BLACKHOLE_STORAGE_ENGINE=1 -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_LIBWRAP=0 -DMYSQL_UNIX_ADDR=/tmp/mysql.sock -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci 
 make 
 make install
 
 9664689914
 CMake Error at cmake/ssl.cmake:234 (MESSAGE):
  Cannot find appropriate system libraries for SSL.  Use WITH_SSL=bundled to
  enable SSL support
Call Stack (most recent call first):
  CMakeLists.txt:407 (MYSQL_CHECK_SSL)


sudo cp /root/zend/ZendGuardLoader-php-5.3-linux-glibc23-x86_64/php-5.3.x/ZendGuardLoader.so /usr/local/zend/

今天yum安装MariaDB的时候一直报这个错误 
Job for mariadb.service failed. See ‘systemctl status mariadb.service’ and ‘journalctl -xn’ for details. 
然后卸了又装，装了又卸，还是不行。于是采用最极端的方法。 
使用非常极端的方法

yum -qa | grep mariadb*; 
#然后使用remove
yum remove mariadb*;
#把安装包全给删了
yum -qa | grep mysql*;
yum remove mysql*;

find / -name mysql*;
#把所有的文件都删了
rm -rf ......
find / -name mariadb*;
#把所有文件都删了
rm -rf .....


授权root远程登录

#root可从任何IP登陆，注意修改密码:'888888' 
mysql>GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '888888' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* to 'root'@'localhost' identified by '123456';

#root可从指定IP登陆，注意修改密码:'888888'、IP:'192.168.1.188'
mysql>GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.1.188' IDENTIFIED BY '888888' WITH GRANT OPTION;
mysql>FLUSH RIVILEGES


wget -c -t 0 https://cdn.mysql.com//Downloads/MySQL-5.6/MySQL-devel-5.6.35-1.linux_glibc2.5.i386.rpm
	yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh

wget http://downloads.sourceforge.net/mcrypt/libmcrypt-2.5.8.tar.gz
wget http://downloads.sourceforge.net/mcrypt/mcrypt-2.6.8.tar.gz
wget http://downloads.sourceforge.net/mhash/mhash-0.9.9.9.tar.gz

http://www.discuz.net/thread-3570835-1-1.html
wget http://download.comsenz.com/DiscuzX/3.2/Discuz_X3.2_SC_UTF8.zip

Bt-Panel: http://124.6.155.2:8888/a7288b58
username: tgxbq1ib
password: 77810411

source /www/wwwroot/discuz88.me/discuzFile/xinhu/webmain/install/rockxinhu.sql

grant all privileges on *.* to 'root'@'%' identified by 'root';
flush privileges;
rockxinhu   source /www/wwwroot/xinhu/webmain/install/rockxinhu.sql