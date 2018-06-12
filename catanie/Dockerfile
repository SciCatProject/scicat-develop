FROM node:9.11.1-alpine AS build

WORKDIR /var/catanie
COPY catanie .

RUN apk update && \
    apk add git && \
    npm i -g npm@6.1.0 && \
    npm i --no-cache

CMD ["npm", "run", "ng", "serve"]
