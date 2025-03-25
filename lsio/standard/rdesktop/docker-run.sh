# [Rdesktop](http://xrdp.org/) - Containers containing full desktop environments
# in many popular flavors for Alpine, Ubuntu, Arch, and Fedora accessible via
# RDP.

. ./.env
docker run -d \
  --name=rdesktop \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3389:3389 `# RDP access port` \
  -v ${BASEDIR:-/volume1/docker}/rdesktop/config:/config `# Configuration files.` \
  -v /var/run/docker.sock:/var/run/docker.sock `# optional` `# Docker Socket on the system, if you want to use Docker in the container` \
  -v ${BASEDIR:-/volume1/docker}/rdesktop/config:/config `# optional` `# abc users home directory` \
  --device /dev/dri:/dev/dri `# optional` `# Add this for GL support (Linux hosts only)` \
  --shm-size="1gb" `# optional` \
  --restart unless-stopped \
  ghcr.io/linuxserver/rdesktop
