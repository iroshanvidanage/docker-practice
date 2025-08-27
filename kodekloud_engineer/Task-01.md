The Nautilus DevOps team aims to containerize various applications following a recent meeting with the application development team. They intend to conduct testing with the following steps:


Install docker-ce and docker compose packages on App Server 3.


Initiate the docker service.


```bash
# you need to add the docker community edition repo before installing
yum config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# install docker-ce
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# start the service and verify
systemctl enable --now docker
systemctl status docker
docker version

```

Full docker installation..

```bash
[root@stapp03 ~]# yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
CentOS Stream 9 - BaseOS                                                                                46 kB/s | 7.3 kB     00:00    
CentOS Stream 9 - BaseOS                                                                                19 MB/s | 8.8 MB     00:00    
CentOS Stream 9 - AppStream                                                                             46 kB/s | 7.5 kB     00:00    
CentOS Stream 9 - AppStream                                                                             23 MB/s |  25 MB     00:01    
CentOS Stream 9 - Extras packages                                                                       43 kB/s | 8.0 kB     00:00    
CentOS Stream 9 - Extras packages                                                                       52 kB/s |  19 kB     00:00    
Extra Packages for Enterprise Linux 9 - x86_64                                                         234 kB/s |  34 kB     00:00    
Extra Packages for Enterprise Linux 9 - x86_64                                                         2.3 MB/s |  20 MB     00:08    
Extra Packages for Enterprise Linux 9 openh264 (From Cisco) - x86_64                                   6.0 kB/s | 993  B     00:00    
Extra Packages for Enterprise Linux 9 - Next - x86_64                                                  121 kB/s |  25 kB     00:00    
Extra Packages for Enterprise Linux 9 - Next - x86_64                                                  333 kB/s | 279 kB     00:00    
No match for argument: docker-ce
No match for argument: docker-ce-cli
No match for argument: containerd.io
No match for argument: docker-buildx-plugin
No match for argument: docker-compose-plugin
Error: Unable to find a match: docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
[root@stapp03 ~]# yum config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
Adding repo from: https://download.docker.com/linux/centos/docker-ce.repo
[root@stapp03 ~]# yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
Docker CE Stable - x86_64                                                                              539 kB/s |  78 kB     00:00    
Dependencies resolved.
---

[root@stapp03 ~]# systemctl enable --now docker
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /usr/lib/systemd/system/docker.service.
[root@stapp03 ~]# systemctl status docker
[root@stapp03 ~]# docker version
Client: Docker Engine - Community
 Version:           28.3.3
 API version:       1.51
 Go version:        go1.24.5
 Git commit:        980b856
 Built:             Fri Jul 25 11:37:02 2025
 OS/Arch:           linux/amd64
 Context:           default

Server: Docker Engine - Community
 Engine:
  Version:          28.3.3
  API version:      1.51 (minimum version 1.24)
  Go version:       go1.24.5
  Git commit:       bea959c
  Built:            Fri Jul 25 11:33:59 2025
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.7.27
  GitCommit:        05044ec0a9a75232cad458027ca83437aae3f4da
 runc:
  Version:          1.2.5
  GitCommit:        v1.2.5-0-g59923ef
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
[root@stapp03 ~]#

```