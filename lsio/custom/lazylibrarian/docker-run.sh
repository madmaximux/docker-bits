# [Lazylibrarian](https://lazylibrarian.gitlab.io/) is a program to follow
# authors and grab metadata for all your digital reading needs. It uses a
# combination of Goodreads Librarything and optionally GoogleBooks as sources
# for author info and book info. This container is based on the DobyTang fork.

. ./.env
docker run -d \
  --name=lazylibrarian \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e DOCKER_MODS=linuxserver/mods:universal-calibre|linuxserver/mods:lazylibrarian-ffmpeg `# optional` `# Allows additional functionality to be added, e.g. the Calibredb import program (optional, more info below)` \
  -p 5299:5299 `# The port for the LazyLibrarian webinterface` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/lazylibrarian/config:/config `# LazyLibrarian config` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/lazylibrarian/downloads:/downloads `# Download location` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/lazylibrarian/books:/books `# optional` `# Books location` \
  --restart unless-stopped \
  ghcr.io/linuxserver/lazylibrarian
