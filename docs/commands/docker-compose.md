# docker-compose

Executes docker-compose commands.

## Usage

```
./vendor/bin/chirripo docker-compose [arguments]
```

## Aliases

- compose
- dc

## Available arguments

Argument       | Details
---------------|-------------
composeCommand | Any argument passed here will be passed directly to docker-compose command.

It is recommended to prepend the whole set of arguments with `--` to forward them exactly as expected to docker-compose command.
