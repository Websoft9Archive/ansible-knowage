#!/bin/bash
echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/profile
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
echo "




































1



/data/wwwroot/


2

root
{{mysql_password}}
n
y
n
"| {{ansible_user_dir}}/Knowage-CE-Installer-Unix.sh -c