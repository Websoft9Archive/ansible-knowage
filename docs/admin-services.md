# Start or Stop the Services

These commands you must know when you using the Knowage of Websoft9

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
