# Start or Stop the Services

These commands you must know when you using the Knowage of Websoft9

### Knowage Server on Docker

```shell
sudo docker inspect knowage-server
sudo docker start knowage-server
sudo docker restart knowage-server
sudo docker stop knowage-server
sudo docker rm knowage-server

# run commands in Container
sudo docker exec -it knowage-server /bin/bash
```

### MariaDB Server on Docker
```shell
sudo docker inspect knowage-mariadb-server
sudo docker start knowage-mariadb-server
sudo docker restart knowage-mariadb-server
sudo docker stop knowage-mariadb-server
sudo docker rm knowage-mariadb-server

# run commands in Container
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