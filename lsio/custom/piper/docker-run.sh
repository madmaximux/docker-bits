# [Piper](https://github.com/rhasspy/piper/) is a fast, local neural text to
# speech system that sounds great and is optimized for the Raspberry Pi 4. This
# container provides a Wyoming protocol server for Piper.

. ./.env
docker run -d \
  --name=piper \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e PIPER_VOICE=en_US-lessac-medium `# The [Piper voice](https://huggingface.co/rhasspy/piper-voices/tree/main) to use, in the format `<language>-<name>-<quality>`` \
  -e PIPER_LENGTH=1.0 `# optional` `# Voice speaking rate, 1.0 is default with < 1.0 being faster and > 1.0 being slower.` \
  -e PIPER_NOISE=0.667 `# optional` `# Controls the variability of the voice by adding noise. Values above 1 will start to degrade audio.` \
  -e PIPER_NOISEW=0.333 `# optional` `# Controls the variability of speaking cadence. Values above 1 produce extreme stutters and pauses.` \
  -e PIPER_SPEAKER=0 `# optional` `# Speaker number to use if the voice supports multiple speakers.` \
  -e PIPER_PROCS=1 `# optional` `# Number of Piper processes to run simultaneously.` \
  -p 10200:10200 `# Wyoming connection port.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/piper${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/piper