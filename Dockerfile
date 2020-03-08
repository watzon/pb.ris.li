FROM node:12

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

EXPOSE 7777
CMD [ "npm", "start" ]
