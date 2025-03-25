# [Bazarr](https://www.bazarr.media/) is a companion application to Sonarr and
# Radarr. It can manage and download subtitles based on your requirements. You
# define your preferences by TV show or movie and Bazarr takes care of
# everything for you.

. ./.env
docker run -d \
  --name=bazarr \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 6767:6767 `# Allows HTTP access to the internal webserver.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/bazarr/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/bazarr/movies:/movies `# optional` `# Location of your movies` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/bazarr/tv:/tv `# optional` `# Location of your TV Shows` \
  --restart unless-stopped \
  ghcr.io/linuxserver/bazarr
