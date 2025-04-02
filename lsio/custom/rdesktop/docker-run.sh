# [Rdesktop](http://xrdp.org/) - Containers containing full desktop environments
# in many popular flavors for Alpine, Ubuntu, Arch, and Fedora accessible via
# RDP.

. ./.env
docker run -d \
  --name=rdesktop \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3389:3389 `# RDP access port` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rdesktop${DOCKERCONFIGDIR:-}:/config \
      # Docker Socket on the system, if you want to use Docker in the container
  -v /var/run/docker.sock:/var/run/docker.sock  `# Docker Socket on the system, if you want to use Docker in the container` \
  --device /dev/dri:/dev/dri `# optional` `# Add this for GL support (Linux hosts only)` \
  --shm-size="1gb" `# optional` \
  --restart unless-stopped \
  ghcr.io/linuxserver/rdesktop