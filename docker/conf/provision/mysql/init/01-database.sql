-- # create databases
CREATE DATABASE IF NOT EXISTS `custom_db`;

-- # create root user and grant rights
CREATE USER 'user'@'localhost' IDENTIFIED BY 'userpass';
GRANT ALL ON *.* TO 'user'@'%';
