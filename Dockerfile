FROM node:alpine

WORKDIR /app

COPY app/package.json app/package-lock.json ./

COPY app/server.js ./

RUN npm install

EXPOSE 3000

CMD ["node", "app/server.js"]
