# Commands to execute

# create two networks
docker network create --driver overlay frontend;
docker network create -d overlay backend;


# create the volume
# docker volume create db-data


# services
docker service create --name db --network backend -e POSTGRES_HOST_AUTH_METHOD=trust --mount type=volume,source=db-data,target=/var/lib/postgresql/data postgres:9.4

docker service create --name worker --network backend --network frontend bretfisher/examplevotingapp_worker

docker service create --name result --network backend -p 8000:80 bretfisher/examplevotingapp_result

docker service create --name redis --network frontend redis:3.2

docker service create --name vote --network frontend -p 80:80 --replicas 3 bretfisher/examplevotingapp_vote

# check the services
docker service ls
docker service ps db
docker service ps redis
docker service ps worker
docker service ps result
docker service ps vote