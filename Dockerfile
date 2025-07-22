# Dockerfile
FROM node:18

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
