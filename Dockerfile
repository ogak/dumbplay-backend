FROM node:dubnium-alpine3.11
WORKDIR /backend
COPY package*.json ./
RUN npm install
RUN npm install -g sequelize
RUN npm i -g sequelize-cli
RUN npm install mysql2 -g
COPY . .
RUN sequelize db:migrate 
EXPOSE 5000
CMD [ "npm", "start" ]
