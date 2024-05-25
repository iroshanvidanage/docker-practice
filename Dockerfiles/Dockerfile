FROM nginx

# Skip anytype of prompts
# ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt-get update -y; apt-get upgrade -y;

# install services
RUN apt-get install telnet iputils-ping -y;

# copy index files
COPY index.html /usr/share/nginx/html/index.html
