rm ~/backup.out
pg_dump -U postgres -h localhost > ~/backup.out
docker-compose down
docker rm -f `docker ps --no-trunc -aq`
docker rmi -f `docker images --no-trunc -aq`
docker-compose up
