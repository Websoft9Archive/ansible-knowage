# 服务启停

使用由Websoft9提供的 Knowage 部署方案，可能需要用到的服务如下：

### Knowage

```shell
sudo systemctl start knowage
sudo systemctl stop knowage
sudo systemctl restart knowage
sudo systemctl status knowage
```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### Docker

```shell
systemctl start docker
systemctl stop docker
systemctl restart docker
systemctl status docker
```