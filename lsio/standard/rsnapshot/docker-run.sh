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
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -v ${BASEDIR:-/volume1/docker}/rsnapshot/config:/config `# Persistent config files` \
  -v ${BASEDIR:-/volume1/docker}/rsnapshot/.snapshots:/.snapshots `# optional` `# Storage location for all snapshots.` \
  -v ${BASEDIR:-/volume1/docker}/rsnapshot/data:/data `# optional` `# Storage location for data to be backed up.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/rsnapshot
