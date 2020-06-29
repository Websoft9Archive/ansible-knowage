# Parameters

The Knowage deployment package contains a sequence software (referred to as "components") required for Knowage to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Knowage

Knowage installation directory: */data/knowage*  
Knowage logs directory: */data/wwwroot/knowage/Knowage-Server-CE/logs*  
Knowage configuration directory: */data/wwwroot/knowage/Knowage-Server-CE/webapps/knowage/WEB-INF/conf/config*

### Java

Java Edition：*OpenJDK*  
JVM Directory： */usr/lib/jvm*  

### Tomcat

Knowage CE Installer provides Apache Tomcat 8 out of the box. Don’t worry about pre-installing any application server.  

Tomcat configuration file: */data/wwwroot/knowage/Knowage-Server-CE/conf/server.xml*  
Tomcat bin: */data/wwwroot/knowage/Knowage-Server-CE/bin*

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite* 

### MYSQL

MySQL installation directory: */usr/local/mysql*  
MySQL data directory: */data/mysql*  
MySQL configuration file: */etc/my.cnf*    
MySQL Web Management URL: *http://Internet IP:9090*, get credential from [Username and Password](/stack-accounts.md)

### phpMyAdmin on Docker

We used Docker to install phpMyAdmin for Knowage

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

You can run the cmd `netstat -tunlp` to list all used ports, and we list the following most useful ports for you:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 8161 | HTTP requests for Knowage Console| Required |
| HTTPS | 5672 | epmd | Optional |
| TCP | 55672 | Erlang distribution | Optional |


## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Java version
java -v

# Docker Version
docker -v

# tomcat  Version
/data/wwwroot/knowage/Knowage-Server-CE/bin/version.sh
```