FROM node:8
 
WORKDIR /usr/src/app
 
COPY package*.json ./
RUN npm ci --only=demo
 
COPY . .
EXPOSE 8080
CMD [ "node", "start" ]