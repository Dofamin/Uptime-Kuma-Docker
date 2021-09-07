#!/bin/bash
git clone https://github.com/Dofamin/Sonarr-Docker.git /srv/Uptime_Kuma/

docker build /srv/Uptime_Kuma/ --tag uptime_kuma 

docker rm --force Uptime_Kuma

docker create \
  --name=Uptime_Kuma \
  -v /srv/uptime-kuma/container-image-root/data/:/srv/uptime-kuma/data/\
  -p 3001:3001 \
  --restart unless-stopped \
  --memory="200m" \
  uptime_kuma:latest 

docker start Uptime_Kuma
