# [Nzbget](http://nzbget.com/) is a usenet downloader, written in C++ and
# designed with performance in mind to achieve maximum download speed by using
# very little system resources.

. ./.env
docker run -d \
  --name=nzbget \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e NZBGET_USER=nzbget `# optional` `# Specify the user for web authentication.` \
  -e NZBGET_PASS=tegbzn6789 `# optional` `# Specify the password for web authentication.` \
  -p 6789:6789 `# WebUI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/nzbget${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}/downloads:${DOCKERMOUNTPATH:-/mnt/data}/downloads \
  --restart unless-stopped \
  ghcr.io/linuxserver/nzbget