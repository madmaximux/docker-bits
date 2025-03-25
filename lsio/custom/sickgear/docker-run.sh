# [SickGear](https://github.com/sickgear/sickgear) provides management of TV
# shows and/or Anime, it detects new episodes, links downloader apps, and more..
# For more information on SickGear visit their website and check it out:
# https://github.com/SickGear/SickGear

. ./.env
docker run -d \
  --name=sickgear \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 8081:8081 `# will map the container's port 8081 to port 8081 on the host` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sickgear/config:/config `# Persistent configuration files.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sickgear/tv:/tv `# where you store your tv shows` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sickgear/downloads:/downloads `# your downloads folder for post processing (must not be download in progress)` \
  --restart unless-stopped \
  ghcr.io/linuxserver/sickgear
