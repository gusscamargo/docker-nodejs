FROM node:16

# Instalando npx
RUN npm i nodemon cowsay create-react-app react-scripts -g -y

RUN mkdir /usr/data
COPY src/package.json /usr/data/package.json
WORKDIR /usr/data
RUN npm i -g -y

WORKDIR /usr/app

EXPOSE 3000

ENTRYPOINT [ "nodemon", "--legacy-watch", "app.js" ]