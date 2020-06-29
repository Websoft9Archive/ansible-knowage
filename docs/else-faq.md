# FAQ

#### Install knowledge in this way?

The repository use the Knowage CE Installer for installation, it integrated the Knowage in Tomcat

#### What the relationship between Knowage and SpagoBI?

Knowage is the evolution of SpagoBI

#### How to define temporary storage for datasets cache?

Knowage caches datasets into a temporary storage, that is actually a JDBC datasource. The configuration of this datasource is mandatory for ad-hoc reporting functionalities. You need to define a JDBC datasource (MySQL, HSQLDB, ...) as described in the above paragraph, but pay attention that this datasource should be configured (in the Knowage web GUI detail page) as "Read and write" and "Write default", and it must be enabled in all tenants.

#### How can I clear Knowage cache completely?

Stop the Knowage service and delete the work cache directory
```
sudo systemctl knowage
rm -rf /data/wwwroot/knowage/Knowage-Server-CE/work/Catalina
```

#### Can I reset password of Knowage by command?

Yes, e.g `knowagectl change_password  admin newpassword`

#### If there is no domain name, can I deploy Knowage?

Yes, visit Knowage by *http://Internet IP:8080/knowage* or *http://Internet IP*

#### What is the password for the database root user?

The password is stored in the server related file: `/credentials/password.txt`

#### Is there a web-base GUI database management tools?

Yes, phpMyAdmin is on it, visit by *http://Internet IP:9090*

#### Is it possible to modify the source path of Knowage?

No

#### How to change the permissions of filesytem?

Change owner(group) or permissions like below:

```shell
chown -R knowage.knowage /data/wwwroot/knowage
find /data/wwwroot/knowage -type d -exec chmod 750 {} \;
find /data/wwwroot/knowage -type f -exec chmod 640 {} \;
```

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a sequence of software in sequence in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.

#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference, just the terminology used by different manufacturers, actually cloud servers