# Usage

## Requirements

To run Chirripo you need:

- Composer managed project
- Docker (You can get it at [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/) if not installed)
- Docker Compose (You can get it at [https://docs.docker.com/compose/install/](https://docs.docker.com/get-docker/) if not installed)

## Install package

Install as with any other composer package:

```
composer require --dev chirripo/chirripo
```

## Copy example variables file

Copy example variables file from vendor/chirripo/chirripo/env.example to .env:

```
cp vendor/chirripo/chirripo/env.example .env
```

## Edit variables as needed

Open .env file and change variables as needed. See [Variables description](/variables-description) to understand all existing variables.

## Start containers

Start the containers by running:

```
./vendor/bin/chirripo start
```

You are now ready to use Chirripo! Read the documentation about [available commands](/commands)

## Chirripo Launcher

See launcher docs at [Chirripo Launcher](/chirripo-launcher)

## Chirripo Proxy

See proxy docs at [Chirripo Proxy](/chirripo-proxy)

## Advanced usage

You can override even more stuff in your containers setup by creating a `docker-compose.override.yml` file in the root of your project to override any stuff in the provided docker-compose files. More documentation on overrides can be found in [official docker compose documentation](https://docs.docker.com/compose/extends/).