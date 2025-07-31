-- MySQL
SHOW DATABASES;

-- POSTGRESQL
\l
SELECT datname FROM pg_database WHERE datistemplate = false;

-- SQL Server
SELECT name FROM sys.databases;