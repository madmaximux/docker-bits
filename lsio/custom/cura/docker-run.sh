# [UltiMaker Cura](https://ultimaker.com/software/ultimaker-cura/) is free,
# easy-to-use 3D printing software trusted by millions of users. Fine-tune your
# 3D model with 400+ settings for the best slicing and printing results.

. ./.env
docker run -d \
  --name=cura \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# Cura desktop gui.` \
  -p 3001:3001 `# Cura desktop gui HTTPS.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/cura/config:/config `# Users home directory in the container, stores program settings and files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/cura
