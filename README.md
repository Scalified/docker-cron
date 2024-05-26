# Docker Cron

[![Docker Pulls](https://img.shields.io/docker/pulls/scalified/cron.svg)](https://hub.docker.com/r/scalified/cron)

## Description

This repository is used for building a [**Docker**](https://www.docker.com) image containing [**Cron**](https://en.wikipedia.org/wiki/Cron)

## Dockerhub

**`docker pull scalified/cron`**

## Supported build arguments

* `CRONTABS_DIR` - the directory where system wide crontab is located (default `/etc/crontabs`)
* `CRON_STDOUT_FILE` - the log file used to output cron's stdout
* `CRON_STDERR_FILE` - the log file used to output cron's stderr

## Volumes

* **`/etc/crontabs`**, unless `CRONTABS_DIR` argument overrides it

### How-To

#### Building Docker Image

`docker build . -t scalified/cron:<tag>`

#### Running Docker Image

`docker run -it scalified/cron /bin/sh`

## Scalified Links

* [Scalified](http://www.scalified.com)
* [Scalified Official Facebook Page](https://www.facebook.com/scalified)
* <a href="mailto:info@scalified.com?subject=[Docker Alpine Cron]: Proposals And Suggestions">Scalified Support</a>

