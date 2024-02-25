# Build
resourses/config.sh file could be change but it tested with default file
```bash
docker compose build
```

# Init
You can Change following varables on resourses/config.sh
+ domain_name
+ system_username
+ system_password
+ database_name
+ database_username
+ database_password
+ database_host
+ database_port

### Configure database init script
```bash
#using resources/config.sh to resources/postgresql/init/init.sql
./docker/create-initdb.sh
```
Init sql file can be used for external postgresql database too.

## Init database
```bash
docker compose up -d postgresql pgadmin
docker compose logs postgresql
```

## Init applications configuration files

```bash
docker compose run fusionpbx-init
```
# Run
Change required files in data directory

Set proper configuraton in supervisord.conf

```bash
sudo chown -R 33:33 data/var* #ensure permission on data paths
docker compose up -d
```