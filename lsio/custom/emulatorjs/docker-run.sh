# [Emulatorjs](https://github.com/linuxserver/emulatorjs) - In browser web based
# emulation portable to nearly any device for many retro consoles. A mix of
# emulators is used between Libretro and EmulatorJS.

. ./.env
docker run -d \
  --name=emulatorjs \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e SUBFOLDER=/ `# optional` `# Specify a subfolder for reverse proxies IE '/FOLDER/'` \
  -p 3000:3000 `# Rom/artwork management interface, used to generate/manage config files and download artwork` \
  -p 80:80 `# Emulation frontend containing static web files used to browse and launch games` \
  -p 4001:4001 `# optional` `# IPFS peering port, if you want to participate in the P2P network to distribute frontend artwork please forward this to the Internet` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/emulatorjs${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}:${DOCKERMOUNTPATH:-/mnt/data} \
  --restart unless-stopped \
  ghcr.io/linuxserver/emulatorjs