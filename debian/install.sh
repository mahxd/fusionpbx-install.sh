#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./resources/config.sh
. ./resources/colors.sh
. ./resources/environment.sh

# removes the cd img from the /etc/apt/sources.list file (not needed after base install)
sed -i '/cdrom:/d' /etc/apt/sources.list

#Update to latest packages
verbose "Update installed packages"
apt-get update && apt-get upgrade -y

#Add dependencies
apt-get install -y wget ca-certificates gnupg2 gosu locales
apt-get install -y lsb-release
#M apt-get install -y systemd
#M apt-get install -y systemd-sysv
apt-get install -y ca-certificates
apt-get install -y dialog
apt-get install -y nano
apt-get install -y net-tools
apt-get install -y gpg
apt-get install -y rsync supervisor

#SNMP
apt-get install -y snmpd
echo "rocommunity public" > /etc/snmp/snmpd.conf
#Mservice snmpd restart

#disable vi visual mode
echo "set mouse-=a" >> ~/.vimrc

#IPTables
#sngrepresources/iptables.sh

#sngrep
resources/sngrep.sh

#FusionPBX
resources/fusionpbx.sh

#PHP
resources/php.sh

#NGINX web server
resources/nginx.sh

#FreeSWITCH
resources/switch.sh

#Fail2ban
resources/fail2ban.sh

#Postgres
resources/postgresql.sh

#set the ip address
server_address="freeswitch"
#$(hostname -I)

#add the database schema, user and groups
#M resources/finish.sh
