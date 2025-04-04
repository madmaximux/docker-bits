# [Emby](https://emby.media/) organizes video, music, live TV, and photos from
# personal media libraries and streams them to smart TVs, streaming boxes and
# mobile devices. This container is packaged as a standalone emby Media Server.

. ./.env
docker run -d \
  --name=emby \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 8096:8096 `# Http webUI.` \
  -p 8920:8920 `# optional` `# Https webUI (you need to setup your own certificate).` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/emby${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}/media:${DOCKERMOUNTPATH:-/mnt/data}/media \
      # Path for Raspberry Pi OpenMAX libs *optional*.
  -v /opt/vc/lib:/opt/vc/lib  `# Path for Raspberry Pi OpenMAX libs *optional*.` \
  --device /dev/dri:/dev/dri `# optional` `# Only needed if you want to use your Intel or AMD GPU for hardware accelerated video encoding (vaapi).` \
  --device /dev/vchiq:/dev/vchiq `# optional` `# Only needed if you want to use your Raspberry Pi OpenMax video encoding (Bellagio).` \
  --device /dev/video10:/dev/video10 `# optional` `# Only needed if you want to use your Raspberry Pi V4L2 video encoding.` \
  --device /dev/video11:/dev/video11 `# optional` `# Only needed if you want to use your Raspberry Pi V4L2 video encoding.` \
  --device /dev/video12:/dev/video12 `# optional` `# Only needed if you want to use your Raspberry Pi V4L2 video encoding.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/emby