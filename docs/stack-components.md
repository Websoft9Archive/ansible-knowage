# Parameters

The Knowage deployment package contains a sequence software (referred to as "components") required for Knowage to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Knowage server

Knowage server data directory: */data/wwwroot/knowage/resources*  

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite* 

### MariaDB

MariaDB data directory: */data/wwwroot/knowage/db*   
MariaDB cache directory: */data/wwwroot/knowage/cache*      
MariaDB Web Management URL: *http://Internet IP:9090*, get credential from [Username and Password](/stack-accounts.md)

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
| HTTP | 80 | HTTP requests for Knowage Console| Required |
| TCP | 3306 | TCP for MySQL | Optional |
| TCP | 9090 | TCP for phpmyadmin | Optional |


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
```