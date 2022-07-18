#!/bin/bash

#Autheur :Berny
#Date : juil 2022
#Description : Docker installation in centos/7




# 1_Uninstall old version of docker 

sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine 

# 2_Add docker repository to Yum package manage

# After removing the old version of docker you must add the latest and correct docker repository to your yum package manager.

sudo yum install -y yum-utils 

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo 

# 3_Install Docker engine

# Now we have removed the old version of docker as well as the added latest version of the Docker repository to yum package manager.

# Now its time for installing the docker -

sudo yum install docker-ce docker-ce-cli containerd.io

# 4_Start and enable Docker service 

# After installing the docker in the previous step let us start the docker service

sudo systemctl start docker 
sudo systemctl enable docker

### Add user student to a group docker

sudo useradd student -G docker