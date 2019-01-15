FROM node:8.15.0-stretch-slim

RUN apt-get update && \
    apt-get install -y git

WORKDIR /var/catanie
COPY catanie .
RUN npm i --no-cache

ENTRYPOINT ["npm", "run", "ng"]
CMD ["serve"]
