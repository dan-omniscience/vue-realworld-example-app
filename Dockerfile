FROM node:lts-alpine as build

COPY package.json /usr/src/app/
WORKDIR /usr/src/app
RUN npm install
RUN ls node_modules
RUN npm run build

FROM nginx

RUN mkdir /usr/src/app
COPY --from=build /usr/src/app/dist /usr/src/app
COPY nginx.conf /etc/nginx/nginx.conf
