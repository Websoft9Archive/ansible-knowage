# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

当服务器上只有一个网站时，不做域名绑定也可以访问网站。但从安全和维护考量，**域名绑定**不可省却。

以示例网站为例，域名绑定操作步骤如下：

1. 确保域名解析已经生效  
2. 使用 SFTP 工具登录云服务器
2. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值修改为你的域名
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # 此处修改为你的域名
   ...
   }
   ```
3. 保存配置文件，重启 [Nginx 服务](/zh/admin-services.md#nginx)

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

1. 使用 phpMyAdmin 登录数据库，找到`knowage_ce`库下的 `SBI_USER`表，删除其中的【biadmin】整行
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-deletedbbiadmin-websoft9.png)

2. 重启容器服务
   ```
   sudo docker restart knowage-server
   ```

3. 进入到 knowage-server容器，查看密码
   ```
   docker exec -it knowage-server bash
   cat /home/knowage/apache-tomcat/webapps/knowage/WEB-INF/conf/config/internal_profiling.xml | grep "password"
   ```

## 多语言

Knowage 支持多语言（不包含中文），下面介绍如何切换语言：

1. 登录 Knowage 后台

2. 打开左侧菜单的：【KNOWAGE ADMINISTRATOR】>【Languages】，设置你所需的语言

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/knowage/knowage-setlanguages-websoft9.png)