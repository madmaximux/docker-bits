# [FIleZilla](https://filezilla-project.org/) Client is a fast and reliable
# cross-platform FTP, FTPS and SFTP client with lots of useful features and an
# intuitive graphical user interface.

. ./.env
docker run -d \
  --name=filezilla \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# FileZilla desktop gui.` \
  -p 3001:3001 `# FileZilla desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/filezilla${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/filezilla