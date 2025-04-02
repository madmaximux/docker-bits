# [Feed2toot](https://gitlab.com/chaica/feed2toot) automatically parses rss
# feeds, identifies new posts and posts them on the Mastodon social network.

. ./.env
docker run -d \
  --name=feed2toot \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e FEED_LIMIT=5 `# optional` `# Limit number of RSS entries published at each execution.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/feed2toot${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/feed2toot