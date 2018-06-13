FROM node:9.11.1-alpine

WORKDIR /var/catanie
COPY catanie .

RUN apk update && \
    apk add git && \
    npm i -g npm@6.1.0 && \
    npm i --no-cache

ENTRYPOINT ["npm", "run", "ng"]
CMD ["serve"]
