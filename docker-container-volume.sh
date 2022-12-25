docker volume create mongodata

docker container create --name mongodata \
  -p 27018:27017 \
  --env MONGO_INITDB_ROOT_USERNAME=root \
  --env MONGO_INITDB_ROOT_PASSWORD=password \
  --mount type=volume,source=mongodata,target=/data/db \
  mongo:latest