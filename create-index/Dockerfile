FROM alpine:3.7

RUN apk add --no-cache mongodb=3.4.10-r0

COPY scripts /var/scripts

CMD ["/bin/sh", "/var/scripts/wait-for.sh", "catamel:3000", "--", \
    "mongo", "--host", "mongodb://mongodb:27017", "/var/scripts/create-index.js"]
