# [Nzbhydra2](https://github.com/theotherp/nzbhydra2) is a meta search
# application for NZB indexers, the 'spiritual successor' to NZBmegasearcH, and
# an evolution of the original application
# [NZBHydra](https://github.com/theotherp/nzbhydra). It provides easy access to
# a number of raw and newznab based indexers.

. ./.env
docker run -d \
  --name=nzbhydra2 \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 5076:5076 `# WebUI` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/nzbhydra2/config:/config `# Where nzbhydra2 should store config data.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/nzbhydra2/downloads:/downloads `# optional` `# NZB download folder.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/nzbhydra2
