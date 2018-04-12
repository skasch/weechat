############################################################
# Dockerfile to run WeeChat Containers
# Based on Ubuntu32 Image
############################################################

# Set the base image to use to Ubuntu
FROM 32bit/ubuntu:14.04

# Set the file maintainer (your name - the file's author)
MAINTAINER Maintainer skasch

# set environment
ENV TERM screen-256color

# Update the default application repository sources list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 16126D3A3E5C1192
RUN apt-get update
RUN apt-get install -y weechat

# Create skasch user
RUN useradd -ms /bin/bash skasch
USER skasch
RUN mkdir -p /home/skasch
RUN chown -R skasch:skasch /home/skasch

# Create .weechat folder
RUN mkdir -p /home/skasch/.weechat

# Expose ports
EXPOSE 7667 7697

# Run server
ENTRYPOINT weechat
