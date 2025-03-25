# [DB Browser for SQLite](https://sqlitebrowser.org/) is a high quality, visual,
# open source tool to create, design, and edit database files compatible with
# SQLite.

. ./.env
docker run -d \
  --name=sqlitebrowser \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# Sqlitebrowser desktop gui.` \
  -p 3001:3001 `# Sqlitebrowser desktop gui HTTPS.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sqlitebrowser/config:/config `# Users home directory in the container, stores program settings and potentially dump files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/sqlitebrowser
