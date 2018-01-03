#!/bin/bash

# This is a script to start the Demo App on Docker 
# Set variables
#host_name=docker.for.mac.localhost #use this if your controller is running from a mac docker host
host_name=
access_key=
port_number=8090
account_name=customer1
sim_enabled=true
ssl_enabled=false

#preferred docker image name 
image_name=appdynamics/demo_docker_app

if [ -z "$host_name" ] || [ -z "$access_key" ] || [ -z "$port_number" ] || [ -z "$account_name" ] || [ -z "$sim_enabled" ] || [ -z "$ssl_enabled" ]; then
 echo "Please assign values to the above variables.. Exiting"
 sleep 4s
 exit 1  
fi   
 
# Pull images
echo  "Pulling the image from docker hub...iogbole/appdynamics_demo_app "
sleep 2s
docker pull iogbole/appdynamics_demo_app

# build the image 
echo  "Building your $image_name image..."
sleep 2s

docker build --build-arg access_key=${access_key} \
	   --build-arg host_name=${host_name} \
	   --build-arg sim_enabled=${sim_enabled} \
	   --build-arg account_name=${account_name} \
	   --build-arg port_number=${port_number} \
	   --build-arg ssl_enabled=${ssl_enabled} \
	    -t ${image_name} .

echo  "Please wait while we start the Docker container, demo app, network visibility agent and machine agent with docker visibility.."
sleep 3s

# star the container 
docker run -it \
 			-v /:/hostroot:ro \
 			-v /var/run/docker.sock:/var/run/docker.sock \
 			 ${image_name}

echo "Done"

exit 0
