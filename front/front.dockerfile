FROM node:23-alpine3.20

WORKDIR /front

COPY package.json package-lock.json ./

RUN npm ci

ENTRYPOINT [ "npm", "run", "dev" ]
