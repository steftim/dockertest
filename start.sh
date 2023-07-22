#!/bin/bash

if [[ $1 = "start" ]]
 then
	cd srv1 && docker-compose up -d &
	cd srv2 && docker-compose up -d &
	cd srv3 && docker-compose up -d &
elif [[ $1 = "stop" ]]
 then
 	cd srv1 && docker-compose down &
	cd srv2 && docker-compose down &
	cd srv3 && docker-compose down &
else
	echo "$0 start"
	echo "$0 stop"
fi
