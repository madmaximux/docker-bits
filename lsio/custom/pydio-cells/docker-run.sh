# [Pydio-cells](https://pydio.com/) is the nextgen file sharing platform for
# organizations. It is a full rewrite of the Pydio project using the Go language
# following a micro-service architecture.

. ./.env
docker run -d \
  --name=pydio-cells \
  --hostname={{ project_name }} `# Pydio Cells uses the hostname to verify local files. This setting is required and should not be changed after it has been set.` \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e EXTERNALURL=yourdomain.url `# The external url you would like to use to access Pydio Cells (Can be https://domain.url or https://IP:PORT).` \
  -e SERVER_IP=0.0.0.0 `# optional` `# Enter the LAN IP of the docker server. Required for local access by IP, added to self signed cert as SAN (not required if accessing only through reverse proxy).` \
  -p 8080:8080 `# Http port` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/pydio-cells${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/pydio-cells