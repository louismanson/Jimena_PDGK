FROM insready/polymer-dev:latest AS build-env
WORKDIR /app
COPY Shop /app
RUN polymer build

FROM nginx:latest
MAINTAINER Luis Hernandez <manson.louis@gmail.com>
COPY --from=build-env  app/build/es5-bundled /usr/share/nginx/html