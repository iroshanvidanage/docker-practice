# Data columes - Named Volumes assignment
# create a postgres container with named volume psql-data using version 9.6.1
docker container run -d --name psql1 -v psql:/var/lib/postgreswl/data postgres:9.6.1
# check the logs of the first container
docker container logs -f psql1
# stop the first container
docker container stop psql1


# second postgres container with same named volume
docker container run -d --name psql2 -v psql:/var/lib/postgreswl/data postgres:9.6.2
# check the logs of the second container
docker container logs -f psql2

# check the volume list
docker volume ls


# Mount Points assignment
# Use Jakyll - Static Site Generator - SSG
# command
# docker run -p 80:4000 -v $(pwd):/site bretfisher/jekyll-serve
docker container run -p 80:4000 -v $(pwd):/site bretfisher/jekyll-serve
# bretfisher/jekyll-serve is an image created with the github jaeyll tool which is an ssg
# ssg - is a tool used to generate websites from markdown files



# install jekyll
gem install jekyll bundler
jekyll new my-awesome-site
cd my-awesome-site
bundle exec jekyll serve
# jekyll runs on 4000 port hence go to localhost:4000
