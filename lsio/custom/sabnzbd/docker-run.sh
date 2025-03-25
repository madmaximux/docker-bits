# [Sabnzbd](http://sabnzbd.org/) makes Usenet as simple and streamlined as
# possible by automating everything we can. All you have to do is add an .nzb.
# SABnzbd takes over from there, where it will be automatically downloaded,
# verified, repaired, extracted and filed away with zero human interaction.

. ./.env
docker run -d \
  --name=sabnzbd \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 8080:8080 `# HTTP port for the WebUI.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sabnzbd/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sabnzbd/downloads:/downloads `# optional` `# Local path for finished downloads.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sabnzbd/incomplete-downloads:/incomplete-downloads `# optional` `# Local path for incomplete-downloads.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/sabnzbd
