# [Medusa](https://pymedusa.com/) is an automatic Video Library Manager for TV
# Shows. It watches for new episodes of your favorite shows, and when they are
# posted it does its magic.

. ./.env
docker run -d \
  --name=medusa \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 8081:8081 `# The port for the Medusa webui` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/medusa/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/medusa/downloads:/downloads `# Download location` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/medusa/tv:/tv `# TV Shows location` \
  --restart unless-stopped \
  ghcr.io/linuxserver/medusa
