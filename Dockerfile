############################################################
# Dockerfile to build Teach documenatation container images
# Based on Node
############################################################
FROM node:8.7

LABEL maintainer="goran@datacamp.com"

ARG NODE_ENV

WORKDIR ./
RUN npm install gitbook-cli -g
CMD gitbook install && gitbook build 

RUN mkdir /app
WORKDIR /app
COPY . /app
RUN rm /app/Jenkinsfile
RUN rm /app/Dockerfile

