# iroshan vidanage

# docker default command to start
docker-compose up

# what i used
docker-compose -f docker-compose-6-1.yml up -d

# to re build the image
docker-compose build

# what i used
docker-compose -f docker-compose-6-1.yml build

# to remove all the compose file data
docker-compose -f docker-compose-6-1.yml down

#remove the local cache
docker-compose -f docker-compose-6-2.yml down --rmi local