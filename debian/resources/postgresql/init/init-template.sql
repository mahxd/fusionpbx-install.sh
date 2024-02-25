SET client_encoding = 'UTF8';
CREATE DATABASE {database_name};
CREATE DATABASE freeswitch;
CREATE ROLE {database_name} WITH SUPERUSER LOGIN PASSWORD '{database_password}';
CREATE ROLE freeswitch WITH SUPERUSER LOGIN PASSWORD '{database_password}';
GRANT ALL PRIVILEGES ON DATABASE {database_name} to {database_username};
GRANT ALL PRIVILEGES ON DATABASE freeswitch to {database_username};
GRANT ALL PRIVILEGES ON DATABASE freeswitch to freeswitch;