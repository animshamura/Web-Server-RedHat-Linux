yum -y update
yum -y install squid
systemctl start squid
systemctl enable squid

vim /etc/squid/squid.conf

systemctl restart squid

yum -y install httpd-tools

touch /etc/squid/passwd
chown squid: /etc/squid/passwd
htpasswd /etc/squid/passwd proxyclient
vim /etc/squid/squid.conf

systemctl restart squid
touch /etc/squid/blacklisted_sites.ac

vim /etc/squid/squid.conf
systemctl restart squid
  
