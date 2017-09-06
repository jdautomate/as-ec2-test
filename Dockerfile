FROM ubuntu:xenial
MAINTAINER justin@openvpn.net

RUN apt-get update && apt-get upgrade -y 
RUN apt-get -y install iptables net-tools openvpn