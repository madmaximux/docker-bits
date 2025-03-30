# [Wikijs](https://github.com/Requarks/wiki) A modern, lightweight and powerful
# wiki app built on NodeJS.

. ./.env
docker run -d \
  --name=wikijs \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e DB_TYPE=sqlite `# optional` `# Set to sqlite (default) or postgres depending on the database engine you wish to use` \
  -e DB_HOST= `# optional` `# DB hostname (postgres only)` \
  -e DB_PORT= `# optional` `# DB port (postgres only)` \
  -e DB_NAME= `# optional` `# DB name (postgres only)` \
  -e DB_USER= `# optional` `# DB username (postgres only)` \
  -e DB_PASS= `# optional` `# DB password (postgres only)` \
  -p 3000:3000 `# Port for Wiki.js's web interface.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/wikijs/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/wikijs/data:/data `# Where Wiki.js data is stored.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/wikijs