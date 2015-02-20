FROM ubuntu:14.04

MAINTAINER Kord Campbell <kordless@stackgeek.com>

# apt-get ssh server, python bits, shellinbox, screen
RUN apt-get update -y
RUN apt-get install -y openssh-server openssl
RUN apt-get install -y python2.7 python-pip build-essential python-dev 
RUN apt-get install -y shellinabox
RUN apt-get install -y screen

# make sshd run directory
RUN mkdir /var/run/sshd

# add a user named giant, setting password to 'swarm'
RUN useradd -d /home/giant -m -p `openssl passwd -1 swarm` giant

# give them root
RUN echo "giant   ALL=(ALL:ALL) ALL" >> /etc/sudoers 

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN apt-get clean && \
	rm -rf /var/lib/apt/lists/*

# shellinaboxd runs on port 4200 by default
CMD ["/usr/bin/shellinaboxd", "-t"]

EXPOSE 4200
