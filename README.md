# [![Docker-Publish](https://github.com/Dofamin/Uptime-Kuma-Docker/actions/workflows/docker-publish.yml/badge.svg?branch=master)](https://github.com/Dofamin/Uptime-Kuma-Docker/actions/workflows/docker-publish.yml)

## Uptime Kuma-Docker

It is a self-hosted monitoring tool like "Uptime Robot".

<img src="https://louislam.net/uptimekuma/1.jpg" width="512" alt="" />

## Bulding

```shell
git clone https://github.com/Dofamin/Uptime-Kuma-Docker.git /srv/Uptime_Kuma/

docker build /srv/Uptime_Kuma/ --tag uptime_kuma 

docker rm --force Uptime_Kuma

docker create \
  --name=Uptime_Kuma \
  -v /srv/Uptime_Kuma/data/:/srv/uptime-kuma/data/ \
  -p 3001:3001 \
  --restart unless-stopped \
  --memory="200m" \
  uptime_kuma:latest 

docker start Uptime_Kuma

```

Or just pull from GitHub

```shell
docker pull ghcr.io/dofamin/uptime-kuma-docker:master

docker rm --force Uptime_Kuma

docker create \
  --name=Uptime_Kuma \
  -v /srv/Uptime_Kuma/data/:/srv/uptime-kuma/data/ \
  -p 3001:3001 \
  --restart unless-stopped \
  --memory="200m" \
  ghcr.io/dofamin/uptime-kuma-docker:master

docker start Uptime_Kuma

```

Browse to http://localhost:3001 after started.

## Features

### Current Features

* Monitoring uptime for HTTP(s) / TCP / Ping / DNS Record.
* Fancy, Reactive, Fast UI/UX.
* Notifications via Telegram, Discord, Gotify, Slack, Pushover, Email (SMTP), and [70+ notification services, click here for the full list](https://github.com/louislam/uptime-kuma/issues/284). 
* 20 seconds interval.
* [Multi Languages](https://github.com/louislam/uptime-kuma/tree/master/src/languages)

---

#### [Official Uptime-Kuma GitHub Repository](https://github.com/louislam/uptime-kuma/)
