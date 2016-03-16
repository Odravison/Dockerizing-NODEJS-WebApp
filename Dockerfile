FROM node

COPY . /docker-node
RUN cd /docker-node

RUN rm -rf node_modules

RUN npm install --production

EXPOSE 8080
CMD["node", "app.js"]
