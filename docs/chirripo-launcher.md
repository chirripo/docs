# Chirripo Launcher

You can install the [Launcher](https://packagist.org/packages/chirripo/chirripo-launcher) to use Chirripo commands by simply using `chirripo` command.

In order to use it, you should follow these instructions:

- Download latest stable release via CLI (code below) or browse to [https://github.com/chirripo/chirripo-launcher/releases/latest](https://github.com/chirripo/chirripo-launcher/releases/latest.).

OSX:
```
curl -OL https://github.com/chirripo/chirripo-launcher/releases/latest/download/chirripo.phar
```

Linux:
```
wget -O chirripo.phar https://github.com/chirripo/chirripo-launcher/releases/latest/download/chirripo.phar
```

- Make downloaded file executable: chmod +x chirripo.phar
- Move chirripo.phar to a location listed in your $PATH, rename to chirripo:
```
sudo mv chirripo.phar /usr/local/bin/chirripo
```

- Use Chirripo by simply invoking `chirripo` from any project using chirripo
- If you have [Chirripo proxy](https://packagist.org/packages/chirripo/chirripo-proxy) installed; you can also manage it with `chirripo proxy-up` and `chirripo proxy-down` commands
