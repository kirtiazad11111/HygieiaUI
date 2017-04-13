FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN apt-get -y  install nodejs-legacy
RUN npm install bower -g
RUN npm install gulp -g
copy . /app
VOLUME  ["/app"]
WORKDIR /app
EXPOSE 3000
CMD ["gulp", "serve"]
