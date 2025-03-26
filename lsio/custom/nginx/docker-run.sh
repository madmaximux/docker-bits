# [Nginx](https://nginx.org/) is a simple webserver with php support. The config
# files reside in `/config` for easy user customization.

. ./.env
docker run -d \
  --name=nginx \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 80:80 `# http` \
  -p 443:443 `# https` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/nginx/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/nginx
