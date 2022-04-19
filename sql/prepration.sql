create database if not exists bwc;
CREATE USER IF NOT EXISTS 'lanzhou_client'@'%' IDENTIFIED WITH mysql_native_password BY 'ferVId428?=';
GRANT SELECT, INSERT, UPDATE, DELETE, DROP ON bwc.* TO 'lanzhou_client'@'%';
FLUSH PRIVILEGES;
