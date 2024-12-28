#!/usr/bin/env bash

if [[ $(id -u) -eq 0 ]]
then
  
  echo "you are a root user"

  if systemctl status docker > /dev/null
  then
	echo "docker is already running"
  else
        echo "starting docker service"
	systemctl start docker
	echo "docker service has been started"

  fi
else

  echo "You are not a root user, you need to run this script as root user or you need to have sudo permission"
  echo "Checking sudo permission to run the script as you are non root user"
fi
