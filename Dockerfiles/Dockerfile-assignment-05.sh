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