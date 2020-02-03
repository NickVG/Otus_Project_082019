#! /bin/bash

docker-machine create --driver generic --generic-ip-address=[MANAGER_IP_ADDRESS] --generic-ssh-user=$USERNAME --generic-ssh-key ~/.ssh/$USERNAME.pub manager
docker-machine regenerate-certs manager
eval $(docker-machine env manager)

