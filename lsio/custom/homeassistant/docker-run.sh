# [Home Assistant Core](https://www.home-assistant.io/) - Open source home
# automation that puts local control and privacy first. Powered by a worldwide
# community of tinkerers and DIY enthusiasts. Perfect to run on a Raspberry Pi
# or a local server

. ./.env
docker run -d \
  --name=homeassistant \
  --net=host `# Shares host networking with container. Required for some devices to be discovered by Home Assistant.` \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 8123:8123 `# optional` `# Application WebUI, only use this if you are not using host mode.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/homeassistant/config:/config `# Home Assistant config storage path.` \
  --device /path/to/device:/path/to/device `# optional` `# For passing through USB, serial or gpio devices.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/homeassistant
