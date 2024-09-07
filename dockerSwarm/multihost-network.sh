# using overlay network
docker network create --driver overlay <name>

# creating a service on overlay network
docker service create --name <name> --network <overlay_network> [OPTIONS] <image_name>
-p <port_to_expose>:<port>
--replicas 3

# watch command to repeatedly run the same command
watch docker service ls

