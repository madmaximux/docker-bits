# [GIMP](https://www.gimp.org/) is a free and open-source raster graphics editor
# used for image manipulation (retouching) and image editing, free-form drawing,
# transcoding between different image file formats, and more specialized tasks.
# It is extensible by means of plugins, and scriptable.

. ./.env
docker run -d \
  --name=gimp \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# GIMP desktop gui.` \
  -p 3001:3001 `# GIMP desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/gimp${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/gimp