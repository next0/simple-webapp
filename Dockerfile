FROM node:6-slim

# set npm log level to warn
ENV NPM_CONFIG_LOGLEVEL warn

# create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# bundle app source
COPY . /usr/src/app/

# install app dependencies
RUN npm install --production

EXPOSE 9000
CMD [ "npm", "start" ]
