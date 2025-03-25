# [Ubooquity](https://vaemendis.net/ubooquity/) is a free, lightweight and easy-
# to-use home server for your comics and ebooks. Use it to access your files
# from anywhere, with a tablet, an e-reader, a phone or a computer.

. ./.env
docker run -d \
  --name=ubooquity \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e MAXMEM= `# optional` `# To set the maximum memory. ( ex: set '1024' for 1GB )` \
  -p 2202:2202 `# The library port.` \
  -p 2203:2203 `# The admin port.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/ubooquity/config:/config `# Config files and database for ubooquity.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/ubooquity/books:/books `# Location of books.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/ubooquity/comics:/comics `# Location of comics.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/ubooquity/files:/files `# Location of raw files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/ubooquity
