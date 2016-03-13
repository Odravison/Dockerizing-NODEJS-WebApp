FROM odravison/ubuntu-node:1.0

RUN sudo apt-get update -y
RUN sudo apt-get install -y nodejs npm

RUN npm install --production

EXPOSE 8080

RUN node /Dockerizing-NODEJS-WebApp/app.js
