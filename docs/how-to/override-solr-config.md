# Override Solr config

If you need to override the config for your local Solr instance, you need to use the docker-compose overrides functionality.

To do so, you should create a `docker-compose.override.yml` file in the root of your folder. In that file, you should override the Solr config like this:

```
version: "3.6"

services:
  solr:
    volumes:
      - '../../../../solr/config:/config'
```

Then, you need to place your solr config into a folder in a `solr/config` folder in the root of your project.