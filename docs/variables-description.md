# Variables Description

The variables file is grouped into several sections as described below.

## General Vars

Variable       | Details
---------------|-------------
PROJECT_ROOT     | The full path to the project root location in your host.
PROJECT_DOCROOT  | The path to the docroot within your project root (e.g. web or docroot).
PROJECT_NAME | The name of the project. Used to prefix the containers names.
PORT_PREFIX | 3 digits prefix for the ports used to expose the different services.

## Nginx container

Variable       | Details
---------------|-------------
NGINX_TAG     | Image tag for the nginx service. Used image is official nginx image.

## PHP Container

Variable       | Details
---------------|-------------
PHP_TAG     | Image tag for the php service. Used image is chirripo/php.
PHP_POST_MAX_SIZE | Post max size setting in php container.
PHP_UPLOAD_MAX_FILESIZE | Upload max filesize setting in the php container.
XDEBUG_ENABLE | Enable or disable Xdebug. Use string "enable" to enable it. Anything else to disable it.

## DB Container

Variable       | Details
---------------|-------------
DB_TAG     | Image tag for the db service. Used image is official mariadb image.
MYSQL_ROOT_PASSWORD | Password for db root user.
MYSQL_DATABASE | Database to create.
MYSQL_USER | User with privileges in given database.
MYSQL_PASSWORD | Password for given user.

## CLI Container

Variable       | Details
---------------|-------------
CLI_TAG     | Image tag for the cli service. Used image is chirripo/cli.

## Varnish Container

Variable       | Details
---------------|-------------
VARNISH_ENABLE | Set to 1 if you want varnish enabled. 0 otherwise.
VARNISH_TAG     | Image tag for the varnish service. Used image is thiagofigueiro/varnish-alpine-docker.

## Mailhog Container

Variable       | Details
---------------|-------------
MAILHOG_ENABLE | Set to 1 if you want mailhog enabled. 0 otherwise.
MAILHOG_TAG     | Image tag for the mailhog service. Used image is mailhog/mailhog.

## Solr Container

Variable       | Details
---------------|-------------
SOLR_ENABLE | Set to 1 if you want solr enabled. 0 otherwise.
SOLR_TAG     | Image tag for the solr service. Used image is official solr image.

## Memcached Container

Variable       | Details
---------------|-------------
MEMCACHE_ENABLE | Set to 1 if you want memcached enabled. 0 otherwise.
MEMCACHE_TAG     | Image tag for the memcached service. Used image is official memcached image.

## Selenium Container

Variable       | Details
---------------|-------------
SELENIUM_ENABLE | Set to 1 if you want selenium enabled. 0 otherwise.
SELENIUM_TAG     | Image tag for the selenium service. Used image is selenium/standalone-chrome-debug.

## Blackfire Container

Variable       | Details
---------------|-------------
BLACKFIRE_ENABLE | Set to 1 if you want blackfire enabled. 0 otherwise.
BLACKFIRE_TAG     | Image tag for the blackfire service. Used image is blackfire/blackfire.
BLACKFIRE_SERVER_ID     | Blackfire server id from your Blackfire account.
BLACKFIRE_SERVER_TOKEN     | Blackfire server token from your Blackfire account.