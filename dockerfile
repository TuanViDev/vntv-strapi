FROM node:20-alpine

WORKDIR /opt/app

COPY package.json package-lock.json ./

RUN npm i

COPY . .

RUN npm run build

EXPOSE 1337

CMD ["npm", "run", "start"]