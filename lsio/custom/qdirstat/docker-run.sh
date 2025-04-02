# [QDirStat](https://github.com/shundhammer/qdirstat) Qt-based directory
# statistics: KDirStat without any KDE -- from the author of the original
# KDirStat.

. ./.env
docker run -d \
  --name=qdirstat \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# QdirStat desktop gui.` \
  -p 3001:3001 `# QdirStat desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/qdirstat${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}:${DOCKERMOUNTPATH:-/mnt/data} \
  --restart unless-stopped \
  ghcr.io/linuxserver/qdirstat