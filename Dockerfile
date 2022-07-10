# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

#install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

#expose port 3000 outside container
EXPOSE 3000

# command used to start application
CMD npm run start

