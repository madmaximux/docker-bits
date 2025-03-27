# [Lollypop](https://wiki.gnome.org/Apps/Lollypop) is a lightweight modern music
# player designed to work excellently on the GNOME desktop environment.

. ./.env
docker run -d \
  --name=lollypop \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# Lollypop desktop gui.` \
  -p 3001:3001 `# Lollypop desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lollypop/config:/config `# Users home directory in the container, stores settings and downloaded metadata for music.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/lollypop
