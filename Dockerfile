FROM node:alpine as build

COPY package.json ./

RUN npm install

COPY . ./

RUN npm run build


FROM nginx:1.21.0-alpine

COPY --from=build /dist /usr/share/nginx/html

COPY --from=build nginx.conf /etc/nginx

ENTRYPOINT ["nginx", "-g", "daemon off;"]