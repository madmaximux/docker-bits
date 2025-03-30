# [Airsonic-advanced](https://github.com/kagemomiji/airsonic-advanced) is a
# free, web-based media streamer, providing ubiquitious access to your music.
# Use it to share your music with friends, or to listen to your own music while
# at work. You can stream to multiple players simultaneously, for instance to
# one player in your kitchen and another in your living room.

. ./.env
docker run -d \
  --name=airsonic-advanced \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e CONTEXT_PATH= `# optional` `# For setting url-base in reverse proxy setups.` \
  -e JAVA_OPTS= `# optional` `# For passing additional java options.` \
  -p 4040:4040 `# WebUI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/data/media:/data/media `# Location of media on disk` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/media:/media `# optional` `# Location of other media.` \
  --device /dev/snd:/dev/snd `# optional` `# Only needed to pass your host sound device to Airsonic's Java jukebox player.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/airsonic-advanced