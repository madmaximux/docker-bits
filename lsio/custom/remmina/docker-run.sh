# [Remmina](https://remmina.org/) is a remote desktop client written in GTK,
# aiming to be useful for system administrators and travellers, who need to work
# with lots of remote computers in front of either large or tiny screens.
# Remmina supports multiple network protocols, in an integrated and consistent
# user interface. Currently RDP, VNC, SPICE, SSH and EXEC are supported.

. ./.env
docker run -d \
  --name=remmina \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# Remmina desktop gui.` \
  -p 3001:3001 `# Remmina desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/remmina${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/remmina