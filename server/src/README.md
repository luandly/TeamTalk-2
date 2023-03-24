#编译说明
###编译环境
	TeamTalk编译需要依赖一些最新的c++标准, 建议使用CentOS 7.0, 如果使用的是CentOS 6.x,需要将g++版本升至支持c++11特性,升级脚本可以使用自动安装脚本目录下的gcc_setup

###第三方库
	TeamTalk使用了许多第三方库，包括protobuf,hiredis,mariadb(mysql),log4cxx等等,在第一次编译TeamTalk之前,建议先执行目录下的
		protobuf: make_protobuf.sh 
		hiredis: make_hiredis.sh
		mariadb: make_mariadb.sh
		log4cxx: make_log4cxx.sh
	这些脚本执行完后会自动将头文件和库文件拷贝至指定的目录
	
###编译TeamTalk服务器
	当以上步骤都完成后，可以使用"./build.sh version 1"编译整个TeamTalk工程,一旦编译完成，会在上级目录生成im_server_x.tar.gz包，该压缩包包含的内容有:
	sync_lib_for_zip.sh: 将lib目录下的依赖库copy至各个服务器的目录下，启动服务前需要先执行一次该脚本
	lib: 主要包含各个服务器依赖的第三方库
	restart.sh: 启动脚本，启动方式为./restart.sh msg_server
	login_server:
	msg_server:
	route_server:			
	db_proxy_server:
	file_server:
	push_server:
	msfs:
	
TeamTalk/server/src/protobuf 目录下有对应的 protobuf-2.6.1的包

服务 端口
login_server 		8080/8008     	内包含MsgServerPort=8100
msg_server 			8000           	内包含LoginServerPort1=8100 RouteServerPort1=8200 PushServerPort1=8500 FileServerPort1=8600
db_proxy_server 	10600
route_server 		8200
http_msg_server 	8400
file_server 		8600/8601
push_server  		8500
服务端流程
服务端的启动没有严格的先后流程，因为各端在启动后会去主动连接其所依赖的服务端，如果相应的服务端还未启动，会始终尝试连接。不过在此，如果是线上环境,还是建议按照如下的启动顺序去启动(也不是唯一的顺序)：
1、启动db_proxy。
2、启动route_server，file_server，msfs
3、启动login_server
4、启动msg_server
那么我就按照服务端的启动顺序去讲解服务端的一个流程概述。
第一步:启动db_proxy后，db_proxy会去根据配置文件连接相应的mysql实例，以及redis实例。
第二步:启动route_server,file_server,msfs后，各个服务端都会开始监听相应的端口。
第三步:启动login_server,login_server就开始监听相应的端口(8080)，等待客户端的连接，而分配一个负载相对较小的msg_server给客户端。
第四步:启动msg_server(端口8000)，msg_server启动后，会去主动连接route_server，login_server，db_proxy_server，会将自己的监听的端口信息注册到login_server去，同时在用户上线，下线的时候会将自己的负载情况汇报给login_server.

