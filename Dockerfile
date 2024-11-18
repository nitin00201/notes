FROM node:18-alpine

WORKDIR /app

COPY package*.json .

RUN npm install

COPY .env.local .

COPY . .

EXPOSE 3000

CMD [ "npm","run","dev" ]