# The [Qbittorrent](https://www.qbittorrent.org/) project aims to provide an
# open-source software alternative to µTorrent. qBittorrent is based on the Qt
# toolkit and libtorrent-rasterbar library.

. ./.env
docker run -d \
  --name=qbittorrent \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e WEBUI_PORT=8080 `# for changing the port of the web UI, see below for explanation` \
  -e TORRENTING_PORT=6881 `# for changing the port of tcp/udp connection, see below for explanation` \
  -p 8080:8080 `# WebUI` \
  -p 6881:6881 `# tcp connection port` \
  -p 6881:6881/udp `# udp connection port` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/qbittorrent${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}/downloads:${DOCKERMOUNTPATH:-/mnt/data}/downloads \
  --restart unless-stopped \
  ghcr.io/linuxserver/qbittorrent