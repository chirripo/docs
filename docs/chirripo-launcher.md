# Chirripo Launcher

You can install the [Launcher](https://packagist.org/packages/chirripo/chirripo-launcher) to use Chirripo commands by simply using `chirripo` command.

In order to use it, you should follow these instructions:

- Install either globally (`composer global require chirripo/chirripo-launcher`) or by using [cgr](https://packagist.org/packages/consolidation/cgr) (`cgr chirripo/chirripo-launcher`)
- Now the `chirripo` binary is available globally. Make sure your global vendor binaries directory is in your $PATH environment variable, you can get its location with the following command:

```
php composer.phar global config bin-dir --absolute
```

- Use Chirripo by simply invoking `chirripo` from any project using chirripo
- If you have [Chirripo proxy](https://packagist.org/packages/chirripo/chirripo-proxy) installed; you can also manage it with `chirripo proxy-up` and `chirripo proxy-down` commands
