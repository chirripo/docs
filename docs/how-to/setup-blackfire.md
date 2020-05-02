# Setup xdebug

In order to setup blackfire you need to:

- Set BLACKFIRE_ENABLE variable to "1"
- Set BLACKFIRE_SERVER_ID to the right value from your Blackfire account
- Set BLACKFIRE_SERVER_TOKEN to the right value from your Blackfire account
- Stop and start containers:

```
./vendor/bin/chirripo stop
./vendor/bin/chirripo start
```

Then you can start profiling by using the [browser companion](https://blackfire.io/docs/integrations/browsers/index) or the [cli tool](https://blackfire.io/docs/cookbooks/profiling-http-via-cli).


Happy profiling!
