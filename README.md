# Alpine Cron Docker #

[![Docker Pulls](https://img.shields.io/docker/pulls/scalified/alpine-cron.svg)](https://hub.docker.com/r/scalified/alpine-cron)
[![](https://images.microbadger.com/badges/image/scalified/alpine-cron.svg)](https://microbadger.com/images/scalified/alpine-cron)
[![](https://images.microbadger.com/badges/version/scalified/alpine-cron.svg)](https://microbadger.com/images/scalified/alpine-cron)

## Description

This repository is used for building a Docker image containing [**Cron**](https://en.wikipedia.org/wiki/Cron) 
running on [**Alpine Linux**](https://alpinelinux.org/)

## Dockerhub

**`docker pull scalified/alpine-cron`**

## Version

| Tag         | Alpine Version |
|-------------|----------------|
| latest, 3.9 | 3.9            |
| 3.4         | 3.4            |

## Supported build arguments

* `CRONTABS_DIR` - the directory where system wide crontab is located (default `/etc/crontabs`)
* `PERIODIC_DIR` - the top level directory containing daily, weekly, monthly, and security	subdirectories which contain standard system periodic executables (default `/etc/periodic`)
* `CRON_STDOUT_FILE` - the log file used to output cron's stdout
* `CRON_STDERR_FILE` - the log file used to output cron's stderr

## Volumes

* **`/etc/crontabs`**, unless `CRONTABS_DIR` argument overrides it
* **`/etc/periodic`**, unless `PERIODIC_DIR` argument overrides it

### How-To

#### Building Docker Image

`docker build . -t <tag>`

#### Running Docker Image

`docker run -it scalified/alpine-cron /bin/sh`

## Scalified Links

* [Scalified](http://www.scalified.com)
* [Scalified Official Facebook Page](https://www.facebook.com/scalified)
* Scalified Support - info@scalified.com
