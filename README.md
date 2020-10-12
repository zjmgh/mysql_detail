This is my own understanding of mysql

First, need to install mysql

# Linux/Unix

Before installation, we can check whether the system comes with MySQL installed:
```
rpm -qa |  grep mysql
```

Next, we use the yum command to install MySQL under the Centos7 system. It should be noted that the MySQL database in the CentOS 7 version has been removed from the default program list, so we need to go to the official website to download the Yum resource package before installation. The download address is : https://dev.mysql.com/downloads/repo/yum/
```
wget http://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm
rpm -ivh mysql80-community-release-el7-3.noarch.rpm
yum update
yum install mysql-server
```

Initialize mysql

```
mysqld --initialize
```

Start mysql

```
systemctl start mysqld
```

View mysql running status

```
systemctl status mysqld
```

# Windows

Enter the official website to find the installation package you need.

The download address is : https://dev.mysql.com/downloads/windows/installer/

Installation steps: https://www.runoob.com/w3cnote/windows10-mysql-installer.html

# Login to mysql

```
mysql -h localhost root -P 3306 -u root -p
```

# Directory

sql operate
```
database operate          --- database.sql
data type descript        --- dateType.txt
table operate             --- table.sql
insert, update and delete --- insert_update_delete.sql
select                    --- select.sql
```