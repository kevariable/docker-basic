# Port Forwarding
docker container craete --name container_name --publish posthost:port_container image:tag

docker image pull nginx:latest

# 8080 is port that we want to use in system host
docker container create --name nginx_container --publish 8080:80 nginx:latest
