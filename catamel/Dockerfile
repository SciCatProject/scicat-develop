FROM node:9.11.1-alpine

WORKDIR /var/catamel

COPY catamel/package.json catamel/package-lock.json ./
RUN sed -i '/kafka/d' package.json && \
    npm i --no-cache && \
    npm i -g nodemon

COPY catamel .
COPY server server/

COPY wait-for.sh /var
CMD ["/bin/sh", "/var/wait-for.sh", "mongodb:27017", "--", "nodemon", "."]
