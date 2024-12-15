FROM ubuntu:20.04

RUN apt update && \ 
	apt install wget xz-utils -y
	
RUN mkdir /opt/node && \
	cd /opt/node && \
	wget https://nodejs.org/dist/v10.18.0/node-v10.18.0-linux-x64.tar.xz && \
	tar -xf node-v10.18.0-linux-x64.tar.xz && \
	export PATH=$PATH:/opt/node/node-v10.18.0-linux-x64/bin/

ENV PATH="$PATH:/opt/node/node-v10.18.0-linux-x64/bin/"

CMD tail -f /dev/null