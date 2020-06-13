# 服务启停

使用由Websoft9提供的 Knowage 部署方案，可能需要用到的服务如下：

### Knowage

```shell
sudo systemctl start knowage-server
sudo systemctl stop knowage-server
sudo systemctl restart knowage-server
sudo systemctl status knowage-server

# you can use this debug mode if Knowage service can't run
knowage-server console
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### Redis

```shell
systemctl start redis
systemctl stop redis
systemctl restart redis
systemctl status redis
```
