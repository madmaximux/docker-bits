# [Flexget](http://flexget.com/) is a multipurpose automation tool for all of
# your media.

. ./.env
docker run -d \
  --name=flexget \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e FG_LOG_LEVEL=info `# Set the FlexGet logging level.` \
  -e FG_LOG_FILE=/config/flexget.log `# Set the FlexGet log file location.` \
  -e FG_CONFIG_FILE=/config/.flexget/config.yml `# Set the FlexGet config file location.` \
  -e FG_WEBUI_PASSWORD=info `# optional` `# Set the FlexGet webui password. Pay attention to Bash/YAML reserved characters.` \
  -p 5050:5050 `# HTTP port for the WebUI.` \
  -v ${BASEDIR:-/volume1/docker}/flexget/config:/config `# Local path for FlexGet config files.` \
  -v ${BASEDIR:-/volume1/docker}/flexget/data:/data `# optional` `# Default path for downloads.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/flexget
