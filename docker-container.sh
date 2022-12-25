# List of container with/without ran
docker container ls -a

# Create container
docker container create --name container_name image_name:tag

# Run container
docker container start container_name

# Stop container
docker container stop container_name

# Remove container
docker container rm container_name