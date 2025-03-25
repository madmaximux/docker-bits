# [Sickchill](https://github.com/SickChill/SickChill) is an Automatic Video
# Library Manager for TV Shows. It watches for new episodes of your favorite
# shows, and when they are posted it does its magic.

. ./.env
docker run -d \
  --name=sickchill \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 8081:8081 `# will map the container's port 8081 to port 8081 on the host` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sickchill/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sickchill/downloads:/downloads `# optional` `# this will store any downloaded data on the docker host` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sickchill/tv:/tv `# optional` `# this will allow sickchill to view what you already have` \
  --restart unless-stopped \
  ghcr.io/linuxserver/sickchill
