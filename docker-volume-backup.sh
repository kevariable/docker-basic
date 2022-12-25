docker create --name nginxbackup \
  --mount type=bind,source="$(pwd)"/mongobackup,target=/backup \
  --mount type=volume,source=mongodata,target=/data \
  nginx:latest

docker run --rm --name ubuntu \
  --mount type=bind,source="$(pwd)/mongo/backup",target=/backup \
  -v mongodata:/data \
  ubuntu:latest \
  tar cvf /backup/backup.tar.gz /data