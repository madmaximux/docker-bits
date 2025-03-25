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
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# Yaak desktop gui.` \
  -p 3001:3001 `# Yaak desktop gui HTTPS.` \
  -v ${BASEDIR:-/volume1/docker}/yaak/config:/config `# Where yaak should store its config and data.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/yaak
