FROM php:8.1.19-cli-alpine3.18
RUN apk update && apk upgrade
RUN apk add php-pdo php-sqlite3
WORKDIR /src
EXPOSE 80
EXPOSE 443
ENTRYPOINT php -S 0.0.0.0:80 -t /src