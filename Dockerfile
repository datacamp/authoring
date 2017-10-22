FROM node:7.1

ARG NODE_ENV

WORKDIR ./

# ADD id_rsa /root/.ssh/id_rsa
# RUN chmod 700 /root/.ssh/id_rsa
# RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
# RUN eval "$(ssh-agent -s)" && ssh-add /root/.ssh/id_rsa

RUN npm install gitbook-cli -g
CMD gitbook build 

RUN mkdir /app
COPY _book/* /app/

WORKDIR /app
RUN rm -f Dockerfile Jenkinsfile
