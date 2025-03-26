# [Mylar3](https://github.com/mylar3/mylar3) is an automated Comic Book
# downloader (cbr/cbz) for use with NZB and torrents written in python. It
# supports SABnzbd, NZBGET, and many torrent clients in addition to DDL.

. ./.env
docker run -d \
  --name=mylar3 \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 8090:8090 `# WebUI` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/mylar3/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/mylar3/comics:/comics `# Map to your comics folder.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/mylar3/downloads:/downloads `# Map to your downloads folder.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/mylar3
