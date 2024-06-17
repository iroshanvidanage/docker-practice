FROM nginx:latest

WORKDIR /etc/nginx/conf.d/

COPY nginx.conf iroshan.conf