FROM debian:wheezy

MAINTAINER Kord Campbell <kordless@stackgeek.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
	apt-get install -y -q \
	python2.7 python-pip build-essential python-dev openssl shellinabox

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/*

CMD ["shellinabox", "--disable-ssl", "--port=57575"] 

EXPOSE 57575
