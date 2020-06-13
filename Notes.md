# Knowage Notes

组件名称：Knowage Community  
安装文档：https://knowage-suite.readthedocs.io/en/7.1/installation-guide/index.html  
配置文档：https://knowage-suite.readthedocs.io/en/7.1/administrator-guide/index.html  
支持平台： RHEL Red Hat Enterprise, Ubuntu18.04, Windows server2012/2008, Windows7/10, CentOS7.x

责任人：cdl

## 概要

[Knowage](https://www.knowage-suite.com/) 是从SpagoBI发展而来，使用Java语言写的开放源码的商业智能分析工具,是一套适合现代商业分析的开源工具套装。提供 Community Edition 和 Enterprise Edition 两个版本。

## 环境要求

* 程序语言：Java1.8 以上 
* 应用服务器：Tomcat8.5 以上
* 数据库：MySQL5.7 or MariaDB10.2,10.2,10.3 or PostgreSQL9.1等
* 依赖组件：NodeJS,Chromium（此两个组件只有企业版才需要） 
* 其他：Knowage CE requires 2GB of free space on file system, Knowage CE requires 3GB of available RAM

注意：Knowage CE Installer 安装方式内置 Tomcat7

## 安装说明

官方提供了 Manual installation 和 Knowage CE Installer 两种安装方式，其中 Manual installation 文档写得很乱，基本无法参考，因此采用 Knowage CE Installer 安装方式。

主要安装步骤如下：

1. 下载Knowage CE Installer文件
2. 解压
3. 运行 `./Knowage-7_0_0-CE-Installer-Unix-20191022.sh -c` 命令
4. 启动服务

注意事项：

* JAVA_HOME 环境变量需存在
* `./Knowage-*.sh -c`  注意 -c 这个参数

## 配置

安装完成后，需要依次完成如下配置

### MySQL配置文件
```
innodb_buffer_pool_size = 2G (adjust value here, 50%-70% of total RAM)
innodb_log_file_size = 500M
```

## 账号密码

### 数据库密码

* 数据库安装方式：自行安装
* 账号密码：root

### 后台账号

如果有后台账号

* 登录地址: http://Internet IP:8080/knowage
* 账号密码: demo_admin/demo_admin
* 密码修改方案：待研究

## 路径

* 程序路径：/data/wwwroot/knowage
* 日志路径：/var/log/knowage
* 配置文件路径：  
* 其他...

## 服务

本项目需要自行构建服务，具体参考Ansible项目

## 环境变量

列出需要增加的环境变量以及增加环境变量的命令：

* 名称 | 路径

## 版本号

通过如下的命令获取主要组件的版本号: 

```

```

## 常见问题

#### 有没有管理控制台？

*http:// 公网 IP:8080* 即可访问控制台，系统默认存在一个无法通过外网访问的guest/guest账号

#### 本项目需要开启哪些端口？

| item      | port  |
| --------- | ----- |
| lustering | 25672 |
| AMQP      | 5672  |
| http      | 15672 |

#### 有没有CLI工具？

有，通过 `rabbitmqctl` 查看工具的说明

#### 安装后是否需要创建普通用户？

有，knowage
