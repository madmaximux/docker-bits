# [syslog-ng](https://www.syslog-ng.com/products/open-source-log-management/)
# allows you to flexibly collect, parse, classify, rewrite and correlate logs
# from across your infrastructure and store or route them to log analysis tools.

. ./.env
docker run -d \
  --name=syslog-ng \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e LOG_TO_STDOUT= `# optional` `# If set to `true` container will log to stdout, otherwise will log to `/config/log/`.` \
  -p 514:5514/udp `# Syslog UDP` \
  -p 601:6601/tcp `# Syslog TCP` \
  -p 6514:6514/tcp `# Syslog TLS` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/syslog-ng/config:/config `# Stores config and application files` \
  -v /var/log:/var/log `# optional` `# Stores logs collected by the syslog-ng service` \
  --restart unless-stopped \
  ghcr.io/linuxserver/syslog-ng
