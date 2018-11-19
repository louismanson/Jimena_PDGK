FROM nginx:latest
COPY build/es5-bundled /usr/share/nginx/html
EXPOSE 80