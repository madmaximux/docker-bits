# [Changedetection.io](https://github.com/dgtlmoon/changedetection.io) provides
# free, open-source web page monitoring, notification and change detection.

. ./.env
docker run -d \
  --name=changedetection.io \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e BASE_URL= `# optional` `# Specify the full URL (including protocol) when running behind a reverse proxy` \
  -e PLAYWRIGHT_DRIVER_URL= `# optional` `# Specify the full URL to your chrome driver instance. See the [wiki](https://github.com/dgtlmoon/changedetection.io/wiki/Playwright-content-fetcher) for details.` \
  -p 5000:5000 `# WebUI` \
  -v ${BASEDIR:-/volume1/docker}/changedetection.io/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/changedetection.io
