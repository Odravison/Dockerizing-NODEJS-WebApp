FROM odravison/ubuntu-nodejs:1.0

COPY . /docker-node
RUN cd /docker-node
RUN sudo rm -rf node_modules

RUN sudo apt-get update -y
RUN sudo apt-get install -y nodejs

RUN npm install --production

EXPOSE 8080

RUN node app.js
