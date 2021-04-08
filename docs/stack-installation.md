# Initial Installation

If you have completed the Knowage deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Knowage

## Knowage Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS* or *http://Server's Internet IP*, you will enter login page of Knowage
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-login-websoft9.png)

   > You can visit Knowage by the URL: *http://Internet IP:8080/knowage* also

2. Log in to Knowage web console([Don't have password?](/stack-accounts.md#knowage)), go to dashboard of Knowage 

3. Go to  Profile Management->Users Management to change the password of Administrator
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-changepw-websoft9.png)

4. Go 【Server Settings】>【Configuration Management】 to configure Knowage
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/knowage/knowage-confmanagement-websoft9.png)

> More useful Knowage guide, please refer to [Knowage Documentation](https://knowage-suite.readthedocs.io/)

## Knowage Setup wizard

Coming soon

## Q&A

#### I can't visit the start page of Knowage?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Why can I visit Knowage directly?

This solution use Nginx for proxy the real URL: *http://Server's Internet IP:8080/knowage*