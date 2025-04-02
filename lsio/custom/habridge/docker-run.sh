# [Habridge](https://github.com/bwssytems/ha-bridge/) emulates Philips Hue API
# to other home automation gateways such as an Amazon Echo/Dot Gen 1 (gen 2 has
# issues discovering ha-bridge) or other systems that support Philips Hue. The
# Bridge handles basic commands such as 'On', 'Off' and 'brightness' commands of
# the hue protocol. This bridge can control most devices that have a distinct
# API.

. ./.env
docker run -d \
  --name=habridge \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e SEC_KEY= `# Key used to secure communication.` \
  -p 8080:8080 `# WebUI` \
  -p 50000:50000 `# HABridge communication port.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/habridge${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/habridge