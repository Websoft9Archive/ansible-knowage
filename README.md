#####  组件
1. Nginx 1.14.0
2. JAVA 1.8
3. MYSQL 5.6
4. Knowage 6.3.1

##### 目录
1. MySQL: /data/mysql
2. Knowage: /data/wwwroot/

##### 用户名/密码信息
1. knowage: (demo用户可删除,新增用户)
   - demo_admin/demo_admin
   - demo_user/demo_user

2. MySQL : root/123456 (后续添加随机密码)

##### 配置文件
1. knowage:
    -  /data/wwwroot/Knowage-Server-CE/conf/server.xml (数据库连接/数据库用户密码信息等)


##### ansible-playbook 可选参数

1. mysql_password: 123456 # mysql 默认密码
2. remote: no  # 是否开启远程
3. knowage_url: http://xxx # knowage下载地址