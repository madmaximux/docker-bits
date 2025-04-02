# [Rsnapshot](http://www.rsnapshot.org/) is a filesystem snapshot utility based
# on rsync. rsnapshot makes it easy to make periodic snapshots of local
# machines, and remote machines over ssh. The code makes extensive use of hard
# links whenever possible, to greatly reduce the disk space required.'

. ./.env
docker run -d \
  --name=rsnapshot \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 80:80 `# Application WebUI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rsnapshot${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rsnapshot/.snapshots:/.snapshots `# Storage location for all snapshots.` \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}:${DOCKERMOUNTPATH:-/mnt/data} \
  --restart unless-stopped \
  ghcr.io/linuxserver/rsnapshot