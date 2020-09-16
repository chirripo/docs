# Chirripo Proxy

You can install the [Chirripo Proxy](https://packagist.org/packages/chirripo/chirripo-proxy) to access chirripo sites using domain names.

In order to use it, you should follow these instructions:

- Install either globally (`composer global require chirripo/chirripo-proxy`) or by using [cgr](https://packagist.org/packages/consolidation/cgr) (`cgr chirripo/chirripo-proxy`)
- Now the `chirripo-proxy` binary is available globally. Make sure your global vendor binaries directory is in your $PATH environment variable, you can get its location with the following command:

```
php composer.phar global config bin-dir --absolute
```

- Use Chirripo proxy by simply invoking `chirripo-proxy` from any folder
- If you have [Chirripo launcher](https://packagist.org/packages/chirripo/chirripo-launcher) installed; you can also invoke proxy from it with `chirripo proxy-up` and `chirripo proxy-down` commands.

## Requirements

- By default, the proxy will need ports 80 & 8085 to run.

## Start proxy

- Set VIRTUAL_HOST variable in your Chirripo managed project like this:

```
VIRTUAL_HOST=mycoolproject.docker
```

- Restart your Chirripo containers with the following containers:

```
./vendor/bin/chirripo stop
./vendor/bin/chirripo start
```

- Start proxy by running `chirripo-proxy up`
- Add hosts entries to your hosts file (/etc/hosts for Linux/Mac) like this:

```
127.0.0.1 mycoolproject.docker varnish.mycoolproject.docker mailhog.mycoolproject.docker solr.mycoolproject.docker
```

You can also use `hosts` command from chirripo to get this line.

- Access your site at url set in VIRTUAL_HOST variable. You can also access the optional services at the above domains if the services are enabled.

## Stop proxy

- Stop proxy by running `chirripo-proxy down`
- Ready!

## Advanced configuration

If you need to change the ports, you should define `CHIRRIPO_PROXY_PORT`, `CHIRRIPO_PROXY_SECURE_PORT` and/or `CHIRRIPO_PROXY_DASHBOARD_PORT` variables when running the proxy commands. Example:

```
CHIRRIPO_PROXY_PORT=80 CHIRRIPO_PROXY_SECURE_PORT=443 CHIRRIPO_PROXY_DASHBOARD_PORT=8085 chirripo-proxy up
```

Or, if using the launcher:

```
CHIRRIPO_PROXY_PORT=80 CHIRRIPO_PROXY_SECURE_PORT=443 CHIRRIPO_PROXY_DASHBOARD_PORT=8085 chirripo proxy-up
```
