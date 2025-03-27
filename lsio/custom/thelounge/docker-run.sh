# [Thelounge](https://thelounge.github.io/) (a fork of shoutIRC) is a web IRC
# client that you host on your own server.

. ./.env
docker run -d \
  --name=thelounge \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 9000:9000 `# Application WebUI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/thelounge/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/thelounge
