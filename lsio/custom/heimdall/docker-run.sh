# [Heimdall](https://heimdall.site) is a way to organise all those links to your
# most used web sites and web applications in a simple way. Simplicity is the
# key to Heimdall. Why not use it as your browser start page? It even has the
# ability to include a search bar using either Google, Bing or DuckDuckGo.

. ./.env
docker run -d \
  --name=heimdall \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 80:80 `# http gui` \
  -p 443:443 `# https gui` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/heimdall${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/heimdall