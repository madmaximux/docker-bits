# [Freshrss](https://freshrss.org/) is a free, self-hostable aggregator for rss
# feeds.

. ./.env
docker run -d \
  --name=freshrss \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 80:80 `# WebUI` \
  -v ${BASEDIR:-/volume1/docker}/freshrss/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/freshrss
