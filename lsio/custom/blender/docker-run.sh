# [Blender](https://www.blender.org/) is a free and open-source 3D computer
# graphics software toolset used for creating animated films, visual effects,
# art, 3D printed models, motion graphics, interactive 3D applications, virtual
# reality, and computer games. **This image does not support GPU rendering out
# of the box only accelerated workspace experience**

. ./.env
docker run -d \
  --name=blender \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e SUBFOLDER=/ `# optional` `# Specify a subfolder to use with reverse proxies, IE `/subfolder/`` \
  -p 3000:3000 `# Blender desktop gui` \
  -p 3001:3001 `# Blender desktop gui HTTPS` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/blender${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/blender