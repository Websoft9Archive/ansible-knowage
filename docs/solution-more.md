# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for binding a domain is that Knowage can accessed by domain name.

Nonetheless, from the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Knowage domain name binding steps:

1. Connect your Cloud Server
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx), change the **server_name**'s value to your domain name
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # 此处修改为你的域名
   ...
   }
   ```

## 密码管理

修改密码即通过已有的密码正常登录系统后，再重新设置一个新密码；  
重置密码即忘记了登录密码，需要通过特殊的手段重新设置一个密码。

### 修改密码

以管理员用户 biadmin 为例，介绍如何修改密码

1. 登录 Knowage 后台
2. 依次打开：【Profile Management】>【Users Management】 修改密码
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-changepw-websoft9.png)


### 重置密码

以管理员用户 biadmin 为例，介绍如何重置密码

1. 使用 SFTP 工具登录服务器，修改下面两个文件中 userId="biadmin" password="********"
   ```
   /data/wwwroot/knowage/Knowage-Server-CE/webapps/knowage/WEB-INF/conf/config/internal_profiling.xml
   /data/wwwroot/knowage/Knowage-Server-CE/webapps/knowage/WEB-INF/conf/webapp/authorizations.xml
   ```

2. 使用 phpMyAdmin 登录数据库，找到`knowage_ce`库下的 `SBI_USER`表，删除其中的【biadmin】整行
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-deletedbbiadmin-websoft9.png)

3. 重启 Knowage 服务
   ```
   systemctl restart knowage
   ```