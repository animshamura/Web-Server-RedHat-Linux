yum -y update
yum install httpd

systemctl start httpd
systemctl enable httpd
systemctl status httpd

firewall-cmd --zone=public --permanent --add-service=http
firewall-cmd --zone=public --permanent --add-service=https
firewall-cmd --reload

vi /etc/httpd/conf.d/vhost.conf

mkdir -p /var/www/html/radiantfleak.com 
mkdir -p /var/log/httpd/radianrfleak.com 

echo "Welcome to Radiant Fleak" > /var/www/html/radiantfleak.com/index.html

systemctl restart httpd.service
