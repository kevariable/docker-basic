docker volume create mongodata

docker run --rm --name mongo_restore \
  --mount type=bind,source="$(pwd)"/mongo/backup,target=/backup \
  -v mongodata:/data \
  ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"