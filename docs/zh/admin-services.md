# 服务启停

使用由Websoft9提供的 Knowage 部署方案，可能需要用到的服务如下：

### Knowage Server on Docker

```shell
sudo docker inspect knowage-server
sudo docker start knowage-server
sudo docker restart knowage-server
sudo docker stop knowage-server
sudo docker rm knowage-server

# 进入容器运行命令
sudo docker exec -it knowage-server /bin/bash
```

### MariaDB Server on Docker
```shell
sudo docker inspect knowage-mariadb-server
sudo docker start knowage-mariadb-server
sudo docker restart knowage-mariadb-server
sudo docker stop knowage-mariadb-server
sudo docker rm knowage-mariadb-server

# 进入容器运行命令
sudo docker exec -it knowage-mariadb-server /bin/bash
```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

### Docker

```shell
systemctl start docker
systemctl stop docker
systemctl restart docker
systemctl status docker
```