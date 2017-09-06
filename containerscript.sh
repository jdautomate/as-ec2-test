#!/bin/bash

docker build -t as/client .

docker run -dit -p 1194/udp -p 443/tcp -v /.:/etc/openvpn --name=ovpnclient --privileged as/client:latest /bin/bash

docker exec -it ovpnclient /bin/bash

/et/openvpn openvpn --config client.ovpn