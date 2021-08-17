---
sidebarDepth: 3
---

# 参数

Knowage 预装包包含 Knowage 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

本项目采用 Docker 安装，运行 `docker ps` 可以查看所有相关的容器：

```
CONTAINER ID   IMAGE                                              COMMAND                  CREATED        STATUS                 PORTS                               NAMES
3b30d327e903   mariadb:10.3                                       "docker-entrypoint.s…"   2 hours ago    Up 2 hours             0.0.0.0:3307->3306/tcp              knowage-mariadb-server
a28572948615   knowagelabs/knowage-server-docker:8.0.0-SNAPSHOT   "./entrypoint.sh ./a…"   2 hours ago    Up 2 hours (healthy)   0.0.0.0:8080->8080/tcp              knowage-server
90d49e9971bf   mariadb:10.3                                       "docker-entrypoint.s…"   2 hours ago    Up 2 hours             3306/tcp                            knowage-mariadb-cache
fa5d3ce16865   knowagelabs/knowage-python-docker:8.0.0-SNAPSHOT   "./entrypoint.sh gun…"   2 hours ago    Up 2 hours (healthy)   5000/tcp                            knowage-python
7fbfe56727d5   knowagelabs/knowage-r-docker:8.0.0-SNAPSHOT        "./entrypoint.sh r k…"   2 hours ago    Up 2 hours (healthy)   5001/tcp                            knowage-r
```

### Knowage server

Knowage-Server 资源目录：*/data/wwwroot/knowage/resources*  

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx*  
Nginx 伪静态规则目录： */etc/nginx/conf.d/rewrite*

### MariaDB

MariaDB 数据目录：*/data/db/mariadb*  
MariaDB 可视化管理地址: *http://服务器公网IP:9090*，用户名和密码请见 [账号密码](/zh/stack-accounts.md) 章节。  

### phpMyAdmin on Docker

本部署方案中的 phpMyAdmin 采用 Docker 部署。

### Docker

Docker 根目录: */var/lib/docker*  
Docker 镜像目录: */var/lib/docker/image*   

## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| TCP | 80 | 通过 HTTP 访问 Knowage 控制台 | 可选 |
| TCP | 9001 | 通过 HTTP 访问 Knowage 控制台 | 可选 |
| TCP | 9090 | 通过 HTTP 访问 phpMyAdmin 控制台 | 可选 |
| TCP | 3306 | MariaDB 服务端口 | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Docker Version
docker -v

# MariaDB version

docker inspect knowage-mariadb-server | grep "MARIADB_VERSION"

# Knowage Version
docker images |grep knowagelabs |awk '{print $2}' |head -1 |cut -d- -f1
```
