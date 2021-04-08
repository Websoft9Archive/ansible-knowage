# 更新升级

网站技术日新月异，**更新升级**是维护工作之一，长时间不升级的程序，就如长时间不维护的建筑物一样，会加速老化、功能逐渐缺失直至无法使用。  

这里注意更新与升级这两词的差异（[延伸阅读](https://support.websoft9.com/docs/faq/zh/tech-upgrade.html#更新-vs-升级)），例如：
- 操作系统打个补丁常称之为**更新**，Ubuntu16.04 变更为 Ubuntu18.04，称之为**升级**
- MySQL5.6.25-->MySQL5.6.30 常称之为**更新**，MySQL5.6->MySQL5.7 称之为**升级**

Knowage 完整的更新升级包括：系统级更新（操作系统和运行环境）和 Knowage 程序升级两种类型

## 系统级更新

运行一条更新命令，即可完成系统级（包含Knowage小版本更新）更新：

``` shell
#For Ubuntu&Debian
apt update && apt upgrade -y

#For Centos&Redhat
yum update -y --skip-broken
```
> 本部署包已预配置一个用于自动更新的计划任务。如果希望去掉自动更新，请删除对应的Cron


## Knowage 升级

本部署基于 Docker 安装，故遵循 Docker 标准的升级流程，具体方案如下：

> 升级 Knowage 之前，请务必做好服务器的快照备份。

1. 使用 SSH 登录到服务器，进入到 docker-compose 文件所在的目录后拉取最新的 Docker 镜像
   ```
   cd /data/knowage/knowage-server
   docker-compose pull
   ```
2. 停止当前的运行容器
   ```
   docker-compose down -v
   ```
3. 重新创建新的容器
   ```
   docker-compose up -d
   ```