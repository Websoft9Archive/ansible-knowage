# Start or Stop the Services

These commands you must know when you using the Knowage of Websoft9

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
