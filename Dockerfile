#FROM insready/polymer-dev:latest AS build-env
#FROM library/node:latest AS build-env
#RUN npm install -g bower polymer-cli@next && \
#    echo '{ "allow_root": true }' > /root/.bowerrc
FROM insready/polymer-dev:latest AS build-env
WORKDIR /app
COPY Shop /app
RUN npm install -g bower
RUN bower --allow-root install
RUN npm install
RUN polymer build

FROM nginx:latest
MAINTAINER Luis Hernandez <manson.louis@gmail.com>
COPY --from=build-env  app/build/es5-bundled /usr/share/nginx/html