FROM node:18-alpine

WORKDIR /home/node/app

COPY . /home/node/app

RUN npm install express

EXPOSE 3000

CMD ["node","app.js"]

