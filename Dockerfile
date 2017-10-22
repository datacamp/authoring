FROM node:7.1

ARG NODE_ENV

RUN mkdir /app
WORKDIR /app

ADD id_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
RUN eval "$(ssh-agent -s)" && ssh-add /root/.ssh/id_rsa

COPY package.json .
RUN npm install --production=false
RUN gitbook build

COPY . /app
