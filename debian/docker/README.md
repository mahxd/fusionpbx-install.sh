# Build
```bash
docker compose build
```

# Init
Configure database init script in resources/postgresql/init/init.sql
```bash
docker compose up -d postgresql pgadmin
docker compose logs postgresql

docker compose run fusionpbx-init
```
# Run
Change required files in data directory

Set proper configuraton in supervisord.conf

```bash
sudo chown -R 33:33 data/var* #ensure permission on data paths
docker compose up -d
```