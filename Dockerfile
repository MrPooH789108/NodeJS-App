FROM node:16.20.1
WORKDIR /app
COPY package.json ./
RUN npm install
RUN npm install dd-trace --save
COPY . .
EXPOSE 5000
CMD [ "sh","-c", "node --require dd-trace/init  index.js"]