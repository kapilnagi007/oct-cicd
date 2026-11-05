
# Stage 1: Building React App
FROM node:20-alpine AS build

WORKDIR /app

COPY boston-app/package*.json ./

RUN npm ci

COPY boston-app/ .

RUN npm run build


# Stage 2: Nginx Server
FROM nginx:alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
