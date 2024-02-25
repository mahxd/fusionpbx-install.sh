# Init
configure database init script in resources/postgresql/init/init.sql
```bash
docker compose up -d postgresql pgadmin
docker compose logs postgresql

docker compose run fusionpbx-init
```
# RUN
change require files in data directory
```bash
docker compose up -d
```