FROM odravison/dockerizing-nodejs:1.0

RUN yum install -y epel-release
RUN yum install -y nodejs npm

COPY package.json Dockerizing-NODEJS-WebApp/package.json
RUN cd Dockerizing-NODEJS-WebApp/; npm install --production

COPY . Dockerizing-NODEJS-WebApp/

EXPOSE 8080

RUN node /Dockerizing-NODEJS-WebApp/app.js
