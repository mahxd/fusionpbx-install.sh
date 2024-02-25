#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"
cd ../resources

#includes
. ./config.sh
. ./colors.sh

cp postgresql/init/init-template.sql postgresql/init/init.sql
sed -i postgresql/init/init.sql -e s:"{database_name}:$database_name:"
sed -i postgresql/init/init.sql -e s:"{database_username}:$database_username:"
sed -i postgresql/init/init.sql -e s:"{database_password}:$database_password:"