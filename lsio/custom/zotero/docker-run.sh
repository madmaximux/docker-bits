# [Zotero](https://www.zotero.org/) is a free, easy-to-use tool to help you
# collect, organize, annotate, cite, and share research.

. ./.env
docker run -d \
  --name=zotero \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# Zotero gui.` \
  -p 3001:3001 `# HTTPS Zotero gui.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/zotero/config:/config `# Users home directory in the container, stores local files and settings` \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/zotero
