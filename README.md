# Prometheus Burrow Exporter

A Prometheus Exporter for gathering Kafka consumer group info from [Burrow](https://github.com/linkedin/Burrow).

This project is a hard-fork of [shamil/burrow_exporter](https://github.com/shamil/burrow_exporter) for the sole purpose of adding custom tags needed by me.


## Usage

```shell
usage: burrow_exporter [<flags>]

Flags:
  -h, --help                  Show context-sensitive help (also try --help-long
                              and --help-man).
  -l, --web.listen-address=":8237"
                              Address to listen on for web interface and
                              telemetry.
      --web.telemetry-path="/metrics"
                              Path under which to expose metrics.
      --burrow.address="http://localhost:8000"
                              Burrow API address.
      --burrow.api-version=3  Burrow API version to leverage.
      --collector.disabled-metrics=""
                              Comma separated list of metrics to disable (one
                              of: consumer-status, partition-current-offset,
                              partition-lag, partition-max-offset,
                              partition-status, topic-partition-offset,
                              total-lag).
      --log.level="info"      Only log messages with the given severity or
                              above. Valid levels: [debug, info, warn, error,
                              fatal]
      --log.format="logger:stderr"
                              Set the log target and format. Example:
                              "logger:syslog?appname=bob&local=7" or
                              "logger:stdout?json=true"
      --version               Show application version.

```

## Run with Docker

```shell
docker run -p 8237:8237 simenduev/burrow-exporter \
  --burrow.address http://localhost:8000
```
