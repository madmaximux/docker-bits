# [Diskover](https://github.com/diskoverdata/diskover-community) is an open
# source file system indexer that uses Elasticsearch to index and manage data
# across heterogeneous storage systems.

. ./.env
docker run -d \
  --name=diskover \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e ES_HOST=elasticsearch `# ElasticSearch host (optional)` \
  -e ES_PORT=9200 `# ElasticSearch port (optional)` \
  -p 80:80 `# diskover Web UI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/diskover${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}:${DOCKERMOUNTPATH:-/mnt/data} \
  --restart unless-stopped \
  ghcr.io/linuxserver/diskover