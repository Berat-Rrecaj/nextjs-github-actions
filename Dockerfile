FROM node:16

# Create app directory
WORKDIR /usr/frontend-web

# Install dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json /usr/frontend-web/

RUN npm install

COPY . /usr/frontend-web

RUN npm run build

COPY . /usr/frontend-web

EXPOSE 3000

CMD [ "npm", "run", "start" ]