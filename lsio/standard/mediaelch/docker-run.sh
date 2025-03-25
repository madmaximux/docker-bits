# [MediaElch](https://github.com/Komet/MediaElch) is a MediaManager for Kodi.
# Information about Movies, TV Shows, Concerts and Music are stored as nfo
# files. Fanarts are downloaded automatically from fanart.tv. Using the nfo
# generator, MediaElch can be used with other MediaCenters as well.

. ./.env
docker run -d \
  --name=mediaelch \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# MediaElch desktop gui.` \
  -p 3001:3001 `# MediaElch desktop gui HTTPS.` \
  -v ${BASEDIR:-/volume1/docker}/mediaelch/config:/config `# Users home directory in the container, stores program settings and files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/mediaelch
