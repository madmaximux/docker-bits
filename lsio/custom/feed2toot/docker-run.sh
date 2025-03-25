# [Feed2toot](https://gitlab.com/chaica/feed2toot) automatically parses rss
# feeds, identifies new posts and posts them on the Mastodon social network.

. ./.env
docker run -d \
  --name=feed2toot \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e FEED_LIMIT=5 `# optional` `# Limit number of RSS entries published at each execution.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/feed2toot/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/feed2toot
