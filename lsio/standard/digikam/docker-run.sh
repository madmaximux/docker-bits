# [digiKam](https://www.digikam.org/): Professional Photo Management with the
# Power of Open Source

. ./.env
docker run -d \
  --name=digikam \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e SUBFOLDER=/ `# optional` `# Specify a subfolder to use with reverse proxies, IE `/subfolder/`` \
  -p 3000:3000 `# optional` `# digiKam desktop gui` \
  -p 3001:3001 `# optional` `# digiKam desktop gui HTTPS` \
  -v ${BASEDIR:-/volume1/docker}/digikam/config:/config `# Users home directory in the container, stores database.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/digikam
