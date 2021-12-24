FROM node:16

RUN npm i -g -y nodemon

RUN mkdir /usr/data
COPY src/package.json /usr/data/package.json
WORKDIR /usr/data
RUN npm i -g -y

WORKDIR /usr/app

EXPOSE 3000


# ENTRYPOINT [ "npm", "run", "start" ]
ENTRYPOINT [ "nodemon", "--legacy-watch", "app.js" ]
