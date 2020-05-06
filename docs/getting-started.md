# Getting Started

This page intends to be a quick-start guide for Chirripo.

In order to start using it, the first step is to add the package to your project:

```
composer require --dev chirripo/chirripo
```

Then, you need to copy and edit the variables file:

```
cp vendor/chirripo/chirripo/env.example .env
```

Edit the file according to your needs. Please remember to change at least the following variables:

- `PROJECT_NAME`: so that it doesn't conflict with any other project using Chirripo
- `PROJECT_ROOT`: so that the mount volumes to the container work as expected
- `PROJECT_DOCROOT`: actual docroot within your project (e.g. web or docroot)
- `PORT_PREFIX`: there should be a different PORT_PREFIX for any project using Chirripo

Then, you can start the containers:

```
./vendor/bin/chirripo start
```

And finally enjoy your development environment!


Please refer to the [Commands](commands/index) documentation to know about all the available commands.
