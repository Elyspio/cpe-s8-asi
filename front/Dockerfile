FROM node as build

WORKDIR /app


COPY package.json package.json
COPY tsconfig.json tsconfig.json
COPY package-lock.json package-lock.json
RUN npm i
COPY src src
COPY public public
RUN npm run build


FROM node:alpine
WORKDIR /app
COPY --from=build /app/build /app
EXPOSE 5000
RUN npm i http-server

CMD ["node_modules/.bin/http-server", "-p", "5000"]


