# SolidFire Cluster stats examples


## What is this?

Get SolidFire cluster stats with [solidfire-cli](https://github.com/solidfire/solidfire-cli).


## Requirements

Install the following software.

- [solidfire-cli](https://github.com/solidfire/solidfire-cli)
- jq

Store a connection, use connection push before executing this script.
```
sfcli connection push --mvip 10.117.60.15 --login admin --password admin --name
"sf01"
```
## Current features

- Retrieve cluster stats
- output csv format

## How to use?

Modify the following parameter in a shell script if you would like to change output filename and stats duration.
```
OUTPUT="stats"$$".log"
DURATION=10
```

```Examples
$ ./clusterstats.sh
```

## TODO

Just example.

- TBD

## Authors

- [@makotow](https://github.com/makotow)

## License

MIT
