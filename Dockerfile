FROM node:latest

WORKDIR /home/node/app

COPY . /home/node/app

RUN npm express

RUN npm install

EXPOSE 6000

CMD ["node","app.js"]

