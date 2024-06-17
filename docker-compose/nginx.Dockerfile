FROM nginx:latest

WORKDIR /etc/nginx/conf.d/

COPY iroshan.conf iroshan.conf