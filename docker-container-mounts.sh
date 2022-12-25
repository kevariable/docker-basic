docker container create --name mongodata \
  --mount type=bind,source="$(pwd)"/mongo/data,target=/data/db \
  -p 27018:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=root \
  -e MONGO_INITDB_ROOT_PASSWORD=password \
  mongo:latest
