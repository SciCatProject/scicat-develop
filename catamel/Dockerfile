FROM node:9.11.1-alpine

WORKDIR /var/catamel

COPY catamel .
COPY server server/

# python, make, g++ needed for snappy
RUN apk update && \
    apk add python make g++ && \
    npm i --no-cache

COPY wait-for.sh /var

CMD ["/bin/sh", "/var/wait-for.sh", "mongodb:27017", "--", "node", "."]
