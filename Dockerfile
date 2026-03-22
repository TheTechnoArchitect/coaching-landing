FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm install --production

COPY coaching-landing.html server.js ./

EXPOSE 3000

CMD ["npm", "start"]
