# [Webtop](https://github.com/linuxserver/docker-webtop) - Alpine, Ubuntu,
# Fedora, and Arch based containers containing full desktop environments in
# officially supported flavors accessible via any modern web browser.

. ./.env
docker run -d \
  --name=webtop \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e SUBFOLDER=/ `# optional` `# Specify a subfolder to use with reverse proxies, IE `/subfolder/`` \
  -e TITLE=Webtop `# optional` `# String which will be used as page/tab title in the web browser.` \
  -p 3000:3000 `# Web Desktop GUI` \
  -p 3001:3001 `# Web Desktop GUI HTTPS` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/webtop${DOCKERCONFIGDIR:-}:/config \
      # Docker Socket on the system, if you want to use Docker in the container
  -v /var/run/docker.sock:/var/run/docker.sock  `# Docker Socket on the system, if you want to use Docker in the container` \
  --device /dev/dri:/dev/dri `# optional` `# Add this for GL support (Linux hosts only)` \
  --shm-size="1gb" `# optional` \
  --restart unless-stopped \
  ghcr.io/linuxserver/webtop