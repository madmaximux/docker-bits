# [Projectsend](http://www.projectsend.org) is a self-hosted application that
# lets you upload files and assign them to specific clients that you create
# yourself. Secure, private and easy. No more depending on external services or
# e-mail to send those files.

. ./.env
docker run -d \
  --name=projectsend \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 80:80 `# WebUI` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/projectsend/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/projectsend/data:/data `# Where to store files to share.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/projectsend
