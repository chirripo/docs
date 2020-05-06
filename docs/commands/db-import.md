# db-import

Import given db file to the default database.

## Usage

```
./vendor/bin/chirripo db-import [arguments]
```

## Aliases

No aliases defined.

## Available arguments

Argument       | Details
---------------|-------------
filepath | Path to the .sql.gz file to import.

## System requirements

This command requires a `gunzip` command present in your system.

## Note about behavior

This command will use `pv` to improve performance and to be able to handle large db files if it is available in your system; otherwise it will fallback to more standard database import method.
