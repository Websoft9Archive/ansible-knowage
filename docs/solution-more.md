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
   server_name www.example.com;  # set you domain here
   ...
   }
   ```

## Resetting Password

There are two main measures to reset password.

### Changing password

Take the steps below for modify the password of user `biadmin`

1. Login to Knowage console
2. Open:【Profile Management】>【Users Management】 and modify password
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-changepw-websoft9.png)


### Forgot Password

Take the steps below for reset the password of user `biadmin`

1. Use **phpMyAdmin** to login MariaDB, find the table `SBI_USER` in the database `knowage`, delete the line【biadmin】
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-deletedbbiadmin-websoft9.png)

2. Restart knowage-server
   ```
   sudo docker restart knowage-server
   ```

3. Cat the password in the knowage-server container
   ```
   docker exec -it knowage-server bash
   cat /home/knowage/apache-tomcat/webapps/knowage/WEB-INF/conf/config/internal_profiling.xml | grep "password"
   ```