# Setup xdebug

In order to setup xdebug you need to:

- Set XDEBUG_ENABLED variable to "enable"
- Stop and start containers:

```
./vendor/bin/chirripo stop
./vendor/bin/chirripo start
```

You need to configure your code editor to use debugging. Find an example with VSCode below.

Point your browser to the desired url using XDEBUG_SESSION_START query parameter like this:

`http://127.0.0.1:10080??XDEBUG_SESSION_START=anything`

## Xdebug setup with VSCode

You need to edit your launch.json like this:

```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for XDebug",
            "type": "php",
            "request": "launch",
            "port": 9000,
            "pathMappings": {
                "/var/www/html": "${workspaceRoot}"
            }
        }
    ]
}
```

Then, you can Start Debugging
