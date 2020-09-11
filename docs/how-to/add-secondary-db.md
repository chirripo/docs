# Add secondary DB

If you need to add a secondary db, you need to use the docker-compose overrides functionality.

To do so, you should create a `docker-compose.override.yml` file in the root of your folder. In that file, you should add the new service like this:

```
version: "3.6"

services:
  secondarydb:
    image: mariadb:${DB_TAG}
    container_name: ${PROJECT_NAME}_secondarydb
    environment:
      - MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
      - MYSQL_DATABASE=secondarydb
      - MYSQL_USER=${MYSQL_USER}
      - MYSQL_PASSWORD=${MYSQL_PASSWORD}
    ports:
        - "${PORT_PREFIX}07:3306"
    volumes:
      - 'secondarydb:/var/lib/mysql'
      - './mysql:/etc/mysql/conf.d'
    networks:
      - internal
volumes:
  secondarydb:
    name: ${PROJECT_NAME}_secondarydb
    external: false
```

Then, you need to configure your application to use the new database:

Setting        | Value
---------------|-------------
Host   | secondarydb
Port | 3306
Database | secondarydb
Username | ${MYSQL_USER}
Password | ${MYSQL_PASSWORD}
Root Password | ${MYSQL_ROOT_PASSWORD}