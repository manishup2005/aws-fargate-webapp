FROM alpine:latest
RUN apk add --no-cahce nodejs npm

WORKDIR /app
COPY package.json /app
RUN npn install

COPY . /app

EXPOSE 3000
CMD["npm","start"]
