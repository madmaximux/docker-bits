# [Webgrabplus](https://www.webgrabplus.com) is a multi-site incremental xmltv
# epg grabber. It collects tv-program guide data from selected tvguide sites for
# your favourite channels.

. ./.env
docker run -d \
  --name=webgrabplus \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/webgrabplus/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/webgrabplus/data:/data `# Where webgrabplus should store it's data files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/webgrabplus
