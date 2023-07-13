FROM node:alpine as build

WORKDIR /app

COPY package.json /app

RUN npm install -g npm@9.8.0

COPY . /app

RUN npm run build


FROM ubuntu

RUN apt-get update

RUN apt-get install nginx -y

COPY --from=build /app/dist /var/www/html/

COPY --from=build /app/nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]