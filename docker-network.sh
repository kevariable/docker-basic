docker network create mongonetwork

docker container create --name mongodb \
  --env MONGO_INITDB_ROOT_USERNAME=root \
  --env MONGO_INITDB_ROOT_PASSWORD=password \
  --network mongonetwork \
  mongo:latest

docker container create --name mongo-express \
  --publish 8081:8081 \
  --env ME_CONFIG_MONGODB_URL="mongodb://root:password@mongodb:27017/" \
  --network mongonetwork \
  mongo-express:latest

docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb