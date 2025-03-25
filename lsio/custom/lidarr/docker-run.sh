# [Lidarr](https://github.com/lidarr/Lidarr) is a music collection manager for
# Usenet and BitTorrent users. It can monitor multiple RSS feeds for new tracks
# from your favorite artists and will grab, sort and rename them. It can also be
# configured to automatically upgrade the quality of files already downloaded
# when a better quality format becomes available.

. ./.env
docker run -d \
  --name=lidarr \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 8686:8686 `# Application WebUI` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/lidarr/config:/config `# Configuration files for Lidarr.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/lidarr/music:/music `# optional` `# Music files (See note in Application setup).` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/lidarr/downloads:/downloads `# optional` `# Path to your download folder for music (See note in Application setup).` \
  --restart unless-stopped \
  ghcr.io/linuxserver/lidarr
