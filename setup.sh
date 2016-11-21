docker rm -f `docker ps --no-trunc -aq`
docker rmi -f `docker images --no-trunc -aq`
docker-compose up
