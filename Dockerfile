FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./

# RUN npm install --only=production
RUN npm install

COPY . .

RUN npm run flow-typed

RUN npm run build

EXPOSE 8080
CMD [ "npm", "run", "serve" ]
