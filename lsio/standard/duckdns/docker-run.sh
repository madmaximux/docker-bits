# [Duckdns](https://duckdns.org/) is a free service which will point a DNS (sub
# domains of duckdns.org) to an IP of your choice. The service is completely
# free, and doesn't require reactivation or forum posts to maintain its
# existence.

. ./.env
docker run -d \
  --name=duckdns \
  --net=host `# optional` `# Use host networking for IPv6 detection` \
  -e PUID=${PUID:-1024} `# optional` `# for UserID` \
  -e PGID=${PGID:-100} `# optional` `# for GroupID` \
  -e UMASK=${UMASK:-002} `# optional` `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# optional` `# for timezone` \
  -e SUBDOMAINS=subdomain1,subdomain2 `# multiple subdomains allowed, comma separated, no spaces, if your domain is user.duckdns.org you put user, not a sub-subdomain` \
  -e TOKEN=token `# DuckDNS token` \
  -e UPDATE_IP=ipv4 `# optional` `# Set to `ipv6` or `ipv4` to update  **only** your public IPv4/6 address. Set to `both` to update IPv6 and IPv4 address. This variable makes use of a [third-party service](#notice-regarding-automatic-detection). Omitting this variable uses DuckDNS for detection and only supports IPv4. `both` and `ipv6` modes needs [host networking](#networking-net).` \
  -e LOG_FILE=false `# optional` `# Set to `true` to log to file (also need to map /config).` \
  -p 80:80 `# Application WebUI` \
  -v ${BASEDIR:-/volume1/docker}/duckdns/config:/config `# Configuration files.` \
  -v ${BASEDIR:-/volume1/docker}/duckdns/config:/config `# optional` `# Persistent config files. Also set `LOG_FILE=true` to keep address history.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/duckdns
