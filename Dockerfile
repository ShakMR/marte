FROM node:fermium
USER root

RUN mkdir -p /src/app
WORKDIR /src/app

COPY public public

RUN npm i http-server

ENV VIRTUAL_HOST=marte.suilabs.com
ENV LETSENCRYPT_HOST=marte.suilabs.com
ENV LETSENCRYPT_EMAIL=borja.arias.upc@gmail.com

EXPOSE 8080

CMD ["npx", "http-server", "public"]