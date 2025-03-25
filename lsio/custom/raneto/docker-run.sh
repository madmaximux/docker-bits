# [Raneto](http://raneto.com/) - is an open source Knowledgebase platform that
# uses static Markdown files to power your Knowledgebase.

. ./.env
docker run -d \
  --name=raneto \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# The port for the Raneto web interface` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/raneto/config:/config `# Raneto config and Markdown files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/raneto
