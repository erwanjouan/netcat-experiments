#!/bin/sh
if [ $# != 2 ]
then
  echo "Usage: webserver <color> <port>"
  exit 0
fi

while true
do
	cat <<EOF | nc -l $2
HTTP/1.1 200 Everything is just working
Server: netcat!
Content-Type: text/html; charset=UTF-8

<!doctype html>
<html>
<body style="background-color: $1;">
<h1>$1 page !</h1>
</body>
</html>

EOF

done
