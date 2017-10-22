############################################################
# Dockerfile to build Teach documenatation container images
# Based on Node
############################################################
FROM node:8.7

LABEL maintainer="goran@datacamp.com"

ARG NODE_ENV

WORKDIR ./
RUN npm install gitbook-cli -g
CMD gitbook build 

RUN mkdir /app
WORKDIR /app
COPY . /app

