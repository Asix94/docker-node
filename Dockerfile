FROM node:latest
RUN mkdir -p /usr/src/index
WORKDIR /usr/src/index
COPY package.json /usr/src/index/
RUN npm install
COPY . /usr/src/index
CMD [ "npm", "start" ]