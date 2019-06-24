# Knowage自动化安装与部署

## 操作系统

目前仅支持Ubuntu16.x以上

## 版本

采用的源码安装方式，为了保证每次安装为最新版本，需要修改源码地址： roles/knowage/defaults/main.yml的knowage_url字段

## 安装指南

支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

其中普通用户登录需要增加变量：

~~~
//假设普通用户的username为
admin_username: websoft9
~~~

## 组件
Knowage,Nginx,JAVA,MYSQL,phpMyAdmin(Docker)

## 使用指南

后台账号：
   - demo_admin/demo_admin
   - demo_user/demo_user
   
配置文件：/data/wwwroot/Knowage-Server-CE/conf/server.xml

文档链接：readme.txt
