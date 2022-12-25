docker container create --name redis_container redis:tag

docker container start redis_container

# List logs of container
docker container logs redis_container

# List logs as realtime of container
docker container logs -f redis_container