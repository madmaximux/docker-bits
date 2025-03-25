# [Diskover](https://github.com/diskoverdata/diskover-community) is an open
# source file system indexer that uses Elasticsearch to index and manage data
# across heterogeneous storage systems.

. ./.env
docker run -d \
  --name=diskover \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e ES_HOST=elasticsearch `# ElasticSearch host (optional)` \
  -e ES_PORT=9200 `# ElasticSearch port (optional)` \
  -p 80:80 `# diskover Web UI` \
  -v ${BASEDIR:-/volume1/docker}/diskover/config:/config `# Persistent config files` \
  -v ${BASEDIR:-/volume1/docker}/diskover/data:/data `# Default mount point to crawl` \
  --restart unless-stopped \
  ghcr.io/linuxserver/diskover
