docker image pull mongo:latest

docker container create --name mongo_test \
  --publish 8081:8081 \
  --env MONGO_INITDB_ROOT_USERNAME=root \
  --env MONGO_INITDB_ROOT_PASSWORD=password \
  mongo:latest