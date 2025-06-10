FROM node:22-alpine AS dev

WORKDIR /app

COPY package*.json ./

RUN ["npm", "install"]

COPY . ./


# # Production image, copy all the files and run next
FROM node:22-alpine AS prod
WORKDIR /app
COPY package*.json ./
RUN ["npm", "install", "--omit=dev"]

COPY --from=dev /app/server.js ./server.js

EXPOSE 8010

CMD ["npm", "run", "start"]