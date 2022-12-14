#Docker Image
FROM node:16.17.0

# Create app directory
RUN mkdir -p /app
WORKDIR /app

COPY package*.json /app
RUN npm install

COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]
