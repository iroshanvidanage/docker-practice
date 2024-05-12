# iroshan
## --net == --network
dn create app
dc run -d --name nginx1 --net app --net-alias nginx nginx
dc run -d --name nginx2 --net app --net-alias nginx nginx
dc run --rm -it --name alpine --net app --net-alias alpine alpine nslookup nginx