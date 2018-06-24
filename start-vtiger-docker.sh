# docker system prune --force
docker containers prune --force
docker network prune --force
docker network create vtiger-containers-network
docker volume create mysql-volume
docker volume create vtiger-volume
 docker run --name mysql -v mysql-volume:/var/lib/mysql -d -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=vtiger -e MYSQL_USER=vtiger_user -e MYSQL_PASSWORD=pwd --network vtiger-containers-network mysql:5.5;
 docker run --name vtiger -v vtiger-volume:/var/www -d -e DB_HOSTNAME=mysql -e DB_USERNAME=vtiger_user -e DB_PASSWORD=pwd -e DB_NAME=vtiger -p 8002:80 --network vtiger-containers-network ldavid/vtiger7
