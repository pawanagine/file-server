FROM node:7.7-alpine
MAINTAINER Pawan Agine <pawanagina@gmail.com>

# install deps
ADD package.json /tmp/package.json
RUN cd /tmp && npm install

# Copy deps
RUN mkdir -p /opt/file-server && cp -a /tmp/node_modules /opt/file-server

# Setup workdir
WORKDIR /opt/file-server
COPY . /opt/file-server

# run
EXPOSE 3000
CMD ["npm", "start"]