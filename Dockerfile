FROM node:9.2-alpine
ENV INSTALL_PATH /onebitforms-client
RUN npm install -g @angular/cli
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY package.json .
COPY . .
RUN npm install
CMD ["npm", "start"]