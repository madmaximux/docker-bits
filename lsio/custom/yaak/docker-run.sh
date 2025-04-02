# [Yaak](https://yaak.app/) is a desktop API client for organizing and executing
# REST, GraphQL, and gRPC requests. It's built using
# [Tauri](https://tauri.app/), [Rust](https://www.rust-lang.org/), and
# [ReactJS](https://react.dev/).

. ./.env
docker run -d \
  --name=yaak \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# Yaak desktop gui.` \
  -p 3001:3001 `# Yaak desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/yaak${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/yaak