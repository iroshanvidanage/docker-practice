# Deploy Nginx Container on Application Server

### Task

The Nautilus DevOps team is conducting application deployment tests on selected application servers. They require a nginx container deployment on Application Server 1. Complete the task with the following instructions:


On Application Server 1 create a container named nginx_1 using the nginx image with the alpine tag. Ensure container is in a running state.

---

### Solution

Use the docker compose or cli to run the docker...

CLI:

```bash

docker contaner run -d -p 8080:80 --name nginx_1 nginx:alpine

```

---

Docker compose

- Create the `docker-compose.yml` file. Then run `docker compose up -d` in cli.

```yml

services:
  nginx:
    image:  nginx:alpine
    container_name: nginx_1
    ports:
      - 80:80

```

---

Unfortunately I failed this lab, I cannot run the container it keeps failing to start.

```bash

docker: Error response from daemon: failed to create task for container: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: error during container init: error mounting "proc" to rootfs at "/proc": mount src=proc, dst=/proc, dstFd=/proc/thread-self/fd/8, flags=0xe: no such file or directory: unknown.

```
