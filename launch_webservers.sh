#!/bin/bash

ports=(8080 8081 8082 8083)
colors=("blue" "green" "orange" "pink")

for i in $(seq 0 3)
do
	./webserver.sh ${colors[$i]}  ${ports[$i]} &

	PID="$!"
	
	echo started ${colors[i]} page at port ${ports[$i]} pid $PID
done
