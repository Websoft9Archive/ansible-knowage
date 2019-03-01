#!/bin/bash

old_password=$(cat /root/password.txt | awk -F ":" '{print $2}' )
new_password=$(</dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10)

sleep 5s
systemctl restart mysql
mysqladmin -uroot -p${old_password} password $new_password

echo 'Databases root Password:'$new_password  > /root/password.txt

sed -i "s/$old_password/$new_password/g" /data/wwwroot/Knowage-Server-CE/conf/server.xml

systemctl restart knowage.service
sed -i "s/\/root\/init.sh//" /etc/rc.local
rm -rf /root/init.sh

