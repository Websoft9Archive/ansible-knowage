# 初始化安装

在云服务器上部署 Knowage 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 和 **TCP:8080** 端口是否开启
3. 若想用域名访问 Knowage，请先到 **域名控制台** 完成一个域名解析

## Knowage 安装向导

1. 使用本地电脑的 Chrome 或 Firefox 浏览器访问网址：*http://域名* 或 *http://Internet IP*, 进入登录界面
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-login-websoft9.png)

   > 也可以通过 http://公网IP:8080/knowage 访问本应用

2. 输入账号密码（[不知道账号密码？](/zh/stack-accounts.md#knowage)），成功登录到 Knowage 后台  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-backend-websoft9.png)

3. 打开【Profile Management】>【Users Management】 修改密码
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-changepw-websoft9.png)

4. 打开【Server Settings】>【Configuration Management】 配置 Knowage
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-confmanagement-websoft9.png)

> 需要了解更多 Knowage 的使用，请参考官方文档：[Knowage Documentation](https://knowage-suite.readthedocs.io/)

## Knowage 入门向导

下面我们以一个完整的示例，介绍如何使用 Knowage 快速分析数据：


## 常见问题

#### 浏览器打开IP地址，无法访问 Knowage（白屏没有结果）？

您的服务器对应的安全组**80端口**没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### Knowage 服务启动失败？

请确保数据库连接信息准确无误

#### 为什么通过IP地址直接可以访问 Knowage？

本项目已经通过 Nginx 设置了端口转发