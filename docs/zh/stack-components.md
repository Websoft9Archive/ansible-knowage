---
sidebarDepth: 3
---

# 参数

Knowage 预装包包含 Knowage 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### Knowage server

Knowage 服务器数据目：*/data/wwwroot/knowage/resources*    

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx*  
Nginx 伪静态规则目录： */etc/nginx/conf.d/rewrite*


### MariaDB

MariaDB 数据目录：*/data/wwwroot/knowage/db*   
MariaDB 缓存目录：*/data/wwwroot/knowage/cache*      
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
| TCP | 8080 | 通过 HTTP 访问 Tomcat 控制台 | 可选 |
| TCP | 9090 | 通过 HTTP 访问 phpMyAdmin 控制台 | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

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