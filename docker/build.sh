container_name="age-calc"
image_name="robert1oo/age-calc"
myport="5000"
docker_port="5000"

#Remove old containers & images
docker stop ${container_name} || true

docker rm ${container_name} || true

docker rmi ${image_name} || true

#Build new image & push it to dockerub
docker build -t ${image_name} .

docker push ${image_name}

#Run the app in a container
docker run --name ${container_name} -p ${myport}:${docker_port} ${image_name}
