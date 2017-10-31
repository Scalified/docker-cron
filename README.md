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

| #      | Version |
|--------|---------|
| Alpine | 3.4     |

## Volumes

* **`/etc/supervisor.d`**
* **`/var/spool/cron`**
* **`/etc/periodic`**

### How-To

#### Building Docker Image

`docker build . -t <tag>`

#### Running Docker Image

`docker run -it scalified/alpine-cron /bin/sh`

## Scalified Links

* [Scalified](http://www.scalified.com)
* [Scalified Official Facebook Page](https://www.facebook.com/scalified)
* Scalified Support - info@scalified.com