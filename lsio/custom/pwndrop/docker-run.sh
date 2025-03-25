# [Pwndrop](https://github.com/kgretzky/pwndrop) is a self-deployable file
# hosting service for sending out red teaming payloads or securely sharing your
# private files over HTTP and WebDAV.

. ./.env
docker run -d \
  --name=pwndrop \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e SECRET_PATH=/pwndrop `# optional` `# Secret path for admin access. Defaults to `/pwndrop`. This parameter only takes effect during initial install; it can later be changed in the web gui.` \
  -p 8080:8080 `# web gui` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/pwndrop/config:/config `# Contains all relevant configuration and data.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/pwndrop
