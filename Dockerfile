############################################################
# Dockerfile to build Teach documenatation container images
# Based on Node
############################################################
FROM node:8.7

LABEL maintainer="goran@datacamp.com"

ARG NODE_ENV

# ADD id_rsa /root/.ssh/id_rsa
# RUN chmod 700 /root/.ssh/id_rsa
# RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
# RUN eval "$(ssh-agent -s)" && ssh-add /root/.ssh/id_rsa

RUN npm install gitbook-cli -g
CMD gitbook build 

RUN mkdir /app
WORKDIR ./_book

RUN rm -f Dockerfile Jenkinsfile
COPY ./* /app/
