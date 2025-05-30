# [Obsidian](https://obsidian.md) is a note-taking app that lets you create,
# link, and organize your notes on your device, with hundreds of plugins and
# themes to customize your workflow. You can also publish your notes online,
# access them offline, and sync them securely with end-to-end encryption.

. ./.env
docker run -d \
  --name=obsidian \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# Obsidian desktop gui.` \
  -p 3001:3001 `# Obsidian desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/obsidian${DOCKERCONFIGDIR:-}:/config \
  --device /dev/dri:/dev/dri `# optional` `# Add this for GL support (Linux hosts only)` \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/obsidian