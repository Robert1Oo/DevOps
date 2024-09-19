container_name="age-calc"
image_name="robert1oo/age-calc"

#Remove containers & images if needed
docker stop ${container_name} || true

docker rm ${container_name} || true

docker rmi ${image_name} || true

