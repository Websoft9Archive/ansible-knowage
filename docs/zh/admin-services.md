# 服务启停

使用由Websoft9提供的 Knowage 部署方案，可能需要用到的服务如下：

### Knowage

```shell
sudo systemctl start knowage
sudo systemctl stop knowage
sudo systemctl restart knowage
sudo systemctl status knowage

# you can use this debug mode if Knowage service can't run
knowage console
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
