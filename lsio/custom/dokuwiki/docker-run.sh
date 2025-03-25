# [Dokuwiki](https://www.dokuwiki.org/dokuwiki/) is a simple to use and highly
# versatile Open Source wiki software that doesn't require a database. It is
# loved by users for its clean and readable syntax. The ease of maintenance,
# backup and integration makes it an administrator's favorite. Built in access
# controls and authentication connectors make DokuWiki especially useful in the
# enterprise context and the large number of plugins contributed by its vibrant
# community allow for a broad range of use cases beyond a traditional wiki.

. ./.env
docker run -d \
  --name=dokuwiki \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 80:80 `# Application HTTP Port` \
  -p 443:443 `# optional` `# #optional Application HTTPS Port` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/dokuwiki/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/dokuwiki
