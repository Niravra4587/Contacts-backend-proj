FROM node:21-alpine

WORKDIR /app

#Install app dependencies
COPY package*.json ./

#Run npm install
RUN npm install

#Bundle app souce
COPY . .

EXPOSE 5001

CMD [ "npm", "start" ]