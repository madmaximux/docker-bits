# [Kometa](https://github.com/Kometa-Team/Kometa) is a powerful tool designed to
# give you complete control over your media libraries. With Kometa, you can take
# your customization to the next level, with granular control over metadata,
# collections, overlays, and much more.

. ./.env
docker run -d \
  --name=kometa \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e KOMETA_CONFIG=/config/config.yml `# optional` `# Specify a custom config file to use.` \
  -e KOMETA_TIME=03:00 `# optional` `# Comma-separated list of times to update each day. Format: `HH:MM`.` \
  -e KOMETA_RUN=False `# optional` `# Set to `True` to run without the scheduler.` \
  -e KOMETA_TEST=False `# optional` `# Set to `True` to run in debug mode with only collections that have `test: true`.` \
  -e KOMETA_NO_MISSING=False `# optional` `# Set to `True` to run without any of the missing movie/show functions.` \
  -p 80:80 `# Application WebUI` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/kometa/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/kometa
