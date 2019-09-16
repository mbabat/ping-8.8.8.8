FROM ubuntu:latest

MAINTAINER Mehmet Babat <babat.mhmet@gmail.com>

RUN apt-get update 

# For ping parameter.
RUN apt-get install -y inetutils-ping 
#Google DNS put ping 8.8.8.8 forever. For optionally CMD ["ping",-c 5,"8.8.8.8"].
CMD ["ping","8.8.8.8"] 
