# used to execute docker swarm commands

# to initialize swarm in docker
docker swarm init
docker swarm init --advertise-addr <ip>

# to add an external CA
docekr swarm init --external-ca "path/to/ca"

# to add workers / managers you need the join tokens
docker swarm join-token <manager/worker>

# to list the nodes
docker node ls

# to list the services
docker service ls

# to list the tasks in side a node
# node_name is optional and will return tasks in the node
# default will be the current node
docker node ps <node_name>

# to list all the tasks running under a service
docker service ps <service_name>

# to update the service
docker service update <service_name/service_id> [OPTIONS]

# define the number of replicas; default 1
--replicas 3

# stop a service
docker service rm <service_name/id>
# removing a container will result in starting a new container

# to chagne the role of a node
docker node update --role manager/worker <node_name>

# to start a service
docker service create [OPTIONS] <image> <command>
docker service create --replicas 3 alpine ping 8.8.8.8
