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

下面我们以一个完整的示例（**可视化呈现订单中不同国家的订单总额**），介绍如何使用 Knowage 快速分析数据。

基本步骤分为 4 步：连接数据源，数据建模，配置数据集，数据可视化呈现。
前2步为IT人员的数据准备，后2步为业务人员的自助分析。

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-websoft9.png)

### 连接数据源：连接 MySQL 数据库服务器；

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-datasource-websoft9.png)

### 数据建模：根据业务场景从数据源中选取数据，建模；

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-model-websoft9.png)

### 配置数据集：业务人员从模型中二次筛选数据，分析和呈现；

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-dataset1-websoft9.png)

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-dataset2-websoft9.png)

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-dataset3-websoft9.png)

### 数据呈现，设置可视化呈现方式（CHART）。根据场景也可以将数据以其他的可视化业务报表（仪表盘）呈现，供决策、分析使用。

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-analysis-websoft9.png)

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-analysis1-websoft9.png)

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-analysis2-websoft9.png)

选择数据集
![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-analysis3-websoft9.png)

配置数据项
![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-analysis4-websoft9.png)

![knowage](https://libs.websoft9.com/Websoft9/blog/tmp/knowage/zh/knowage-analysis5-websoft9.png)


## 常见问题

#### 浏览器打开IP地址，无法访问 Knowage（白屏没有结果）？

您的服务器对应的安全组**80端口**没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### Knowage 服务启动失败？

请确保数据库连接信息准确无误

#### 为什么通过IP地址直接可以访问 Knowage？

本项目已经通过 Nginx 设置了端口转发
