#!/bin/bash 
# first install docker
curl -fsSL https://raw.githubusercontent.com/codemerlin/install-docker/master/install.sh | bash 
# create two volumes
docker volume create mysql-volume
docker volume create vtiger-volume
