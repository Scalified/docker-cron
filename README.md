# CRON Docker Image

[![Release](https://img.shields.io/github/v/release/Scalified/docker-cron?style=flat-square)](https://github.com/Scalified/docker-cron/releases/latest)
[![Docker Pulls](https://img.shields.io/docker/pulls/scalified/cron.svg)](https://hub.docker.com/r/scalified/cron)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/Scalified/docker-cron/blob/master/LICENSE)

## Overview

[**Alpine**](https://www.alpinelinux.org/) [**Docker**](https://www.docker.com/) image running [**Cron**](https://en.wikipedia.org/wiki/Cron).
Built on top of the [**Scalified Supervisor**](https://github.com/Scalified/docker-supervisor) image

## Usage

```bash
docker run \
    --name cron \
    -v crontab:/etc/crontabs/root:ro \
    --detach \
    --restart always \
    scalified/cron
```

## Scalified Links

* [Scalified](http://www.scalified.com)
* [Scalified Official Facebook Page](https://www.facebook.com/scalified)
* <a href="mailto:info@scalified.com?subject=[Docker Alpine Cron]: Proposals And Suggestions">Scalified Support</a>

