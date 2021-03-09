FROM node:fermium
USER root

RUN mkdir -p /src/app
WORKDIR /src/app

COPY public public

RUN npm i http-server

CMD ["npx", "http-server", "public"]