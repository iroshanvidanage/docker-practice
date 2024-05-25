FROM nginx:latest

# Skip anytype of prompts
# ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt-get update -y && apt-get upgrade -y && \
# install services
        apt-get install telnet iputils-ping -y;

# Change working dirctory
WORKDIR /usr/share/nginx/html/
# copy index files
COPY index.html index.html
