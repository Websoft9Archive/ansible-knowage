# Initial Installation

If you have completed the Knowage deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:8161 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Knowage

## Knowage Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS:15672* or *http://Internet IP:15672*, you will enter installation wizard of Knowage
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/knowage/knowage-login-websoft9.png)

2. Log in to Knowage web console([Don't have password?](/stack-accounts.md#knowage))  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/knowage/knowage-bk-websoft9.png)

3. Set you new password from: 【Users】>【Admin】>【Permissions】>【Update this user】
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/knowage/knowage-pw-websoft9.png)

> More useful Knowage guide, please refer to [Knowage Documentation](https://www.knowage.com/documentation.html)

## Q&A

#### I can't visit the start page of Knowage?

Your TCP:15672 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Knowage service can't start? 