FROM debian:buster

# update: updates list of packages (e.g. nginx, apache, mariadb, openssl)
RUN apt-get -y update && apt-get -y install nginx openssl
RUN mkdir /var/www/localhost

COPY ./config/sites-available/default /etc/nginx/sites-enabled/default

RUN openssl req -x509 -nodes -days 365 -subj "/C=FR/ST=ARA/O=Petit Chat Corporation/CN=localhost" \
-newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt;

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 443
