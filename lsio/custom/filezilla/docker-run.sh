# [FIleZilla](https://filezilla-project.org/) Client is a fast and reliable
# cross-platform FTP, FTPS and SFTP client with lots of useful features and an
# intuitive graphical user interface.

. ./.env
docker run -d \
  --name=filezilla \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# FileZilla desktop gui.` \
  -p 3001:3001 `# FileZilla desktop gui HTTPS.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/filezilla/config:/config `# Users home directory in the container, stores local files and settings` \
  --restart unless-stopped \
  ghcr.io/linuxserver/filezilla
