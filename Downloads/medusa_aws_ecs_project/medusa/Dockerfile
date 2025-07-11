
FROM node:18-alpine
WORKDIR /medusa
COPY package*.json ./
RUN npm ci --only=production
COPY . .
RUN npm run build
EXPOSE 9000
CMD ["node", "dist/index.js"]
