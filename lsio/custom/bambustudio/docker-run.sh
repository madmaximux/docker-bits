# [Bambu Studio](https://bambulab.com/en/download/studio) is an open-source,
# cutting-edge, feature-rich slicing software. It contains project-based
# workflows, systematically optimized slicing algorithms, and an easy-to-use
# graphical interface, bringing users an incredibly smooth printing experience.

. ./.env
docker run -d \
  --name=bambustudio \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e DARK_MODE=true `# optional` `# Set this to true to enable dark mode for Bambu Studio.` \
  -p 3000:3000 `# Bambu Studio desktop gui.` \
  -p 3001:3001 `# Bambu Studio desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/bambustudio${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/bambustudio