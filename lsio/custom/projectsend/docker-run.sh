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
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 80:80 `# WebUI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/projectsend${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}:${DOCKERMOUNTPATH:-/mnt/data} \
  --restart unless-stopped \
  ghcr.io/linuxserver/projectsend