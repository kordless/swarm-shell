FROM ubuntu:14.04

MAINTAINER Kord Campbell <kordless@stackgeek.com>


RUN apt-get update && apt-get install -y openssh-server
RUN apt-get install -y -q python2.7 python-pip build-essential python-dev openssl shellinabox

RUN mkdir /var/run/sshd

RUN useradd -d /home/giant -m -p `openssl passwd -1 swarm` giant

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/shellinaboxd", "-t"]

EXPOSE 4200
