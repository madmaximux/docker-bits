# [Htpcmanager](https://github.com/HTPC-Manager/HTPC-Manager) is a front end for
# many htpc related applications.

. ./.env
docker run -d \
  --name=htpcmanager \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 8085:8085 `# Application WebUI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/htpcmanager${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/htpcmanager