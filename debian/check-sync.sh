#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

rsync -avcn --no-perms --no-owner --no-group ./data/{etc-*,usr-*,var-*} aec@t3call-app01:/data/fufs/data/


